#==============================================================================
# ■ BMSP 戦闘行動の強制拡張[ForcedActionExtension] Ver1.00 2012/01/24
#------------------------------------------------------------------------------
# 　戦闘行動の強制コマンドを拡張します．
#==============================================================================
#------------------------------------------------------------------------------
# ■内容
# 戦闘行動の強制コマンドを拡張します．
# 強制の対象者を最後にスキル，アイテムを使用したバトラーにできます．
#
# 位置：特に指定はありません
#
# ■使用方法
# スクリプトに丸ごと貼り付けていただければ使用できます。
#
# 戦闘中，バトルイベントやスキルなどのコモンイベントの呼び出しの際，
# 戦闘行動の強制コマンドの実行前に以下のスクリプトを実行してください．
#   FAEx.user_force
# このスクリプトが実行された次の戦闘行動の強制コマンドのみ行動主体が
# 最後にスキル，アイテムを使用したバトラーとなります．
#
# また，最後にスキル，アイテムを使用したバトラーは
# アクションの強制コマンドによって行動したバトラーは対象外となります．
# 例えば
#   アクター1のスキルにより以下のコモンイベントが呼び出された
#     戦闘行動の強制：エネミー1が防御を実行
#     スクリプト：FAEx.user_force
#     戦闘行動の強制：(エネミー1)が攻撃を実行
#   結果は，まずエネミー1が防御を実行．
#   次にスクリプトにより(エネミー1)がアクター1となり，
#   アクター１が攻撃を実行します．
# 
#
# ■注意
# このスクリプトでは
# 「Game_Interpreter」「Scene_Battle」
# のメソッドを改変しています．
# ■情報
# このスクリプトはgentlawkによって作られたものです．
# 利用規約はhttp://blueredzone.comをご覧ください．
#------------------------------------------------------------------------------
module BMSP
  @@includes ||= {}
  @@includes[:ForcedActionExtension] = true
  module ForcedActionExtension
    @user = nil
    @@userforce = false
    @forcedaction = false
    #--------------------------------------------------------------------------
    # ● 行動ユーザーアクセサ
    #--------------------------------------------------------------------------
    def self.user
      @user
    end
    def self.user=(user)
      @user = user
    end
    #--------------------------------------------------------------------------
    # ● ユーザー強制アクションフラグアクセサ
    #--------------------------------------------------------------------------
    def self.user_force?
      @@userforce
    end
    def self.user_force=(b)
      @@userforce = b
    end
    #--------------------------------------------------------------------------
    # ● 強制アクションフラグアクセサ
    #--------------------------------------------------------------------------
    def self.forced_action?
      @forcedaction
    end
    def self.forced_action=(b)
      @forcedaction = b
    end
    module Interface
      include ForcedActionExtension
      ::FAEx = self
      #------------------------------------------------------------------------
      # ● ユーザー強制アクションコマンド
      #------------------------------------------------------------------------
      def self.user_force
        @@userforce = true
      end
    end
  end
end
#==============================================================================
# ■ Game_Interpreter
#==============================================================================
class Game_Interpreter
  #--------------------------------------------------------------------------
  # ● 戦闘行動の強制
  #--------------------------------------------------------------------------
  alias bmsp_forceactionextension_command_339 command_339
  def command_339
    if BMSP::ForcedActionExtension.user_force?
      BMSP::ForcedActionExtension.user_force = false
      return unless $game_party.in_battle
      battler = BMSP::ForcedActionExtension.user
      return if battler.nil?
      battler.force_action(@params[2], @params[3])
      BattleManager.force_action(battler)
      Fiber.yield while BattleManager.action_forced?
    else
      bmsp_forceactionextension_command_339
    end
  end
end
#==============================================================================
# ■ Scene_Battle
#==============================================================================
class Scene_Battle < Scene_Base
  #--------------------------------------------------------------------------
  # ● 強制された戦闘行動の処理
  #--------------------------------------------------------------------------
  alias bmsp_forceactionextension_process_forced_action process_forced_action
  def process_forced_action
    if BattleManager.action_forced?
      BMSP::ForcedActionExtension.forced_action = true
    end
    bmsp_forceactionextension_process_forced_action
  end
  #--------------------------------------------------------------------------
  # ● スキル／アイテムの使用
  #--------------------------------------------------------------------------
  alias bmsp_forceactionextension_use_item use_item
  def use_item
    if BMSP::ForcedActionExtension.forced_action?
      BMSP::ForcedActionExtension.forced_action = false
    else
      BMSP::ForcedActionExtension.user = @subject
    end
    bmsp_forceactionextension_use_item
  end
end
							