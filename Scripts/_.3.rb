#==============================================================================
# ■ BMSP ダメージイベント[DAMAGEEVENT] Ver1.02 2013/10/20
#------------------------------------------------------------------------------
# 　ダメージを受けるタイミングでイベントを実行することができます．
#==============================================================================
#------------------------------------------------------------------------------
# ■内容
# ダメージを受けるタイミングでイベントを実行することができます．
# 特定のダメージにエフェクトを付加したり，
# キャラクターの台詞やボイスを入れたりすることができます．
#
# 位置：特に指定はありません
#
# ■使用方法
# スクリプトに丸ごと貼り付けていただければ使用できます．
#
# ●コモンイベントの作成方法
# ・コモンイベントの名前
#   なんでも構いません．わかりやすい名前を付けて下さい
# ・トリガー
#   なし
# ・実行内容
#   一行目に注釈を作成してください．
#   内容は
#     ==ダメージイベント:%types%:%timing%==
#   と記述します．
#
#   %types%は以下のタイプを任意個"|"で区切って記述します．
#   ここに書かれたタイプの状況すべてでイベントが実行される可能性が生まれます．
#   反撃：反撃時に実行されます．
#   反射：反射時に実行されます．
#   身代わり：身代わり時に実行されます．
#   失敗：失敗時に実行されます．
#   会心：会心時に実行されます．
#   ミス：ミス時に実行されます．
#   回避：回避時に実行されます．
#   HP：HPダメージ時に実行されます．
#   MP：MPダメージ時に実行されます．
#   TP：TPダメージ時に実行されます．
#   ステート付加：ステート付加時に実行されます．
#   ステート解除：ステート解除時に実行されます．
#
#   %timing%は「表示前」もしくは「表示後」で置き換えます．
#   表示前：メッセージ表示直前にコモンイベントを実行します
#   表示後：メッセージ表示直後にコモンイベントを実行します
#
#   二行目から注釈でないイベントコマンドまでは条件を表す注釈となります．
#   注釈1つにつき必ず満たすべき条件を書きます．
#   また，注釈内1行につきいづれかを満たせば良い条件を書きます．
#   例
#     注釈：条件1
#         ：条件2
#     注釈：条件3
#   この例では，条件1かつ条件3を満たすときまたは，
#   条件2かつ条件3を満たすときにこのイベントが実行されます．
#   条件以降については任意のイベントコマンドを並べることが出来ます．
#
# ●条件の書き方
# 条件部分はevalで評価しているのでrubyに書ける式を自由に書くことが出来ます．
# 各タイプに応じて特殊な変数を使用することができます．
# □反撃
# ・subject
#   反撃を行うアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   反撃をされるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   反撃時に行う行動(スキル)を参照できます．(RPG::Skill)
#
# □反射
# ・subject
#   反射を行うアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   反射をされるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   反射を行うアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □身代わり
# ・subst
#   身代わりを行うアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   身代わりをされるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
#
# □失敗
# ・target
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   使用したアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □会心
# ・subject
#   クリティカル攻撃を行うアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   クリティカル攻撃を受けるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   使用したアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □ミス
# ・target
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   使用したアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □回避
# ・subject
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   回避を行うアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   回避するアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □HP
# ・subject
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   HPダメージを受けるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   使用したアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □MP
# ・subject
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   MPダメージを受けるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   使用したアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □TP
# ・subject
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   TPダメージを受けるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・action
#   使用したアイテム・スキルを参照できます．(RPG::Item，RPG::Skill)
#
# □ステート付加
# ・subject
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   ステートを付加されるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・state
#   付加されるステートを参照できます．(RPG::State)
#
# □ステート解除
# ・subject
#   アイテム・スキルを使用したアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・target
#   ステートを解除されるアクター・エネミーを参照できます．(Game_Actor，Game_Enemy)
# ・state
#   解除されるステートを参照できます．(RPG::State)
#
# 各タイプで使用可能な変数から参照できる値や，
# その他の情報の参照についてはスクリプトエディタや
# ヘルプのVX Ace データ構造から各自が確認してください．
#
# 例：ID1のアクターが大ダメージを受けたときにボイス再生
#   注釈：==ダメージイベント:HP:表示後==
#   注釈：target.actor? && target.id == 1
#   注釈：target.result.hp_damage * 100 / target.mhp >= 50
#   SE の演奏：xxxx
#
# 例：会心の一撃によるダメージは画面をフラッシュ
#   注釈：==ダメージイベント:HP:表示前==
#   注釈：target.result.critical
#   画面のフラッシュ：xxxx
# 
# もし条件の書き方がよくわからなければ掲示板(http://blueredzone.bbs.fc2.com/)
# あたりにでも書いて頂ければ条件式もお作りします．
#
# ■注意
# このスクリプトでは
# 「Scene_Battle」「Window_BattleLog」
# のメソッドを改変しています．
# ■情報
# このスクリプトはgentlawkによって作られたものです．
# 利用規約はhttp://blueredzone.comをご覧ください．
#------------------------------------------------------------------------------
module BMSP
  @@includes ||= {}
  @@includes[:DamageEvent] = 1.02
  module DamageEvent
    #▲▽▲▽▲▽▲▽▲▽▲▽▲▽▲▽
    #詳細設定
    
    #▲▽▲▽▲▽▲▽▲▽▲▽▲▽▲▽
    /==ダメージイベント:(.+):(前|後)==/o
    #--------------------------------------------------------------------------
    # ● 対象コモンイベントの初期化
    #--------------------------------------------------------------------------
    def self.init_commons
      types = [:counter, :reflection, :substitute, :failure, :critical, :miss, :evasion,
              :hp_damage, :mp_damage, :tp_damage, :added_st, :removed_st]
      @commons = {}
      types.each do |type|
        @commons[type] = {:before=>[], :after=>[]}
      end
      $data_common_events.each do |common|
        next if common.nil?
        types,timing,cond = self.check_damageevent(common)
        next if types.nil?
        types.each do |type|
          @commons[type][timing].push([common, cond])
        end
      end
    end
    #--------------------------------------------------------------------------
    # ● 条件にマッチするコモンイベントを取得
    #--------------------------------------------------------------------------
    def self.commons(type, timing, binding)
      init_commons if @commons.nil?
      return @commons[type][timing].select{ |common,cond|
        check_condition(cond, binding)
      }.map{|cc| cc.first }
    end
    #--------------------------------------------------------------------------
    # ● ダメージイベントかチェックして情報を取得
    #--------------------------------------------------------------------------
    def self.check_damageevent(common_event)
      list = common_event.list
      index = 0
      return nil if list[index].code != 108 # 注釈じゃない
      define_comment = list[index].parameters[0]
      index += 1
      while list[index].code == 408
        index += 1
      end
      return nil unless define_comment =~ /==ダメージイベント:(.+):(表示前|表示後)==/o
      types = $1.split('|')
      timing = $2 == "表示前" ? :before : :after
      # 対象タイプを変換
      types.map!{|type| self.translate_type(type)}.compact!
      return nil if types.empty?
      # 条件文を抽出
      cond = []
      size = -1
      while list[index].code == 108
        size += 1
        cond[size] = [list[index].parameters[0]]
        index += 1
        while list[index].code == 408
          cond[size].push(list[index].parameters[0])
          index += 1
        end
      end
      return types,timing,cond
    end
    #--------------------------------------------------------------------------
    # ● 条件を満たすかチェック
    #--------------------------------------------------------------------------
    def self.check_condition(formulas, binding)
      return formulas.inject(true){|ret, subformulas|
        ret && subformulas.inject(false){|r, formula|
          r || binding.eval(formula)
        }
      }
    end
    #--------------------------------------------------------------------------
    # ● タイプ変換
    #--------------------------------------------------------------------------
    def self.translate_type(type)
      case type
      when "反撃"        ; :counter
      when "反射"        ; :reflection
      when "身代わり"    ; :substitute
      when "失敗"        ; :failure
      when "会心"        ; :critical
      when "ミス"        ; :miss
      when "回避"        ; :evasion
      when "HP"          ; :hp_damage
      when "MP"          ; :mp_damage
      when "TP"          ; :tp_damage
      when "ステート付加"; :added_st
      when "ステート解除"; :removed_st
      else nil
      end
    end
    #--------------------------------------------------------------------------
    # ● 条件を評価
    #--------------------------------------------------------------------------
    def self.eval(formulas, use, user, targets)
      return formulas.inject(true){|ret, subformulas|
        ret && subformulas.inject(false){|r, formula|
          r || Kernel.eval(formula)
        }
      }
    end
    #--------------------------------------------------------------------------
    # ● バグの例外クラス
    #--------------------------------------------------------------------------
    class BUG < StandardError
    end
    #--------------------------------------------------------------------------
    # ● 導入スクリプトの例外クラス
    #--------------------------------------------------------------------------
    class REQUIRE < StandardError
    end
  end
  #--------------------------------------------------------------------------
  # ● 必須スクリプトのチェック
  #--------------------------------------------------------------------------
  class << self
    if method_defined?(:check_require)
      alias damageevent_check_require check_require
    end
  end
  def self.check_require(require, version)
    return true
  end
end
#==============================================================================
# ■ Scene_Battle
#==============================================================================
class Scene_Battle < Scene_Base
  attr_reader :bmsp_damageevent_subject
  #--------------------------------------------------------------------------
  # ● ログウィンドウの作成
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_create_log_window create_log_window
  def create_log_window
    bmsp_damageevent_create_log_window
    @log_window.method_bmsp_damageevent_execute_common_event =
      method(:bmsp_damageevent_execute_common_event)
  end
  #--------------------------------------------------------------------------
  # ● コモンイベントの実行
  #--------------------------------------------------------------------------
  def bmsp_damageevent_execute_common_event(common_event)
    interpreter = Game_Interpreter.new
    interpreter.setup(common_event.list)
    loop do
      interpreter.update
      wait_for_message
      wait_for_effect if $game_troop.all_dead?
      break unless interpreter.running?
      update_for_wait
    end
  end
  #--------------------------------------------------------------------------
  # ● 戦闘行動の実行
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_execute_action execute_action
  def execute_action
    @bmsp_damageevent_subject = @subject
    bmsp_damageevent_execute_action
  end
  #--------------------------------------------------------------------------
  # ● 反撃の発動
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_invoke_counter_attack invoke_counter_attack
  def invoke_counter_attack(target, item)
    @bmsp_damageevent_subject = target
    bmsp_damageevent_invoke_counter_attack(target, item)
    @bmsp_damageevent_subject = @subject
  end
  #--------------------------------------------------------------------------
  # ● 魔法反射の発動
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_invoke_magic_reflection invoke_magic_reflection
  def invoke_magic_reflection(target, item)
    @bmsp_damageevent_subject = target
    bmsp_damageevent_invoke_magic_reflection(target, item)
    @bmsp_damageevent_subject = @subject
  end
end
#==============================================================================
# ■ Window_BattleLog
#==============================================================================
class Window_BattleLog < Window_Selectable
  #--------------------------------------------------------------------------
  # ● コモンイベント呼び出し用メソッドの設定
  #--------------------------------------------------------------------------
  def method_bmsp_damageevent_execute_common_event=(method)
    @method_bmsp_damageevent_execute_common_event = method
  end
  #--------------------------------------------------------------------------
  # ● 文章の追加
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_add_text add_text
  def add_text(text)
    /.*`(.*)'/ =~ caller[0]
    bmsp_dagameevent_execute_event($1, :before)
    bmsp_damageevent_add_text(text)
    bmsp_dagameevent_execute_event($1, :after)
  end
  #--------------------------------------------------------------------------
  # ● フック対象メソッドのマッチ
  #--------------------------------------------------------------------------
  def bmsp_dagameevent_match(method, timing)
    case method
    when "display_counter"       ; type = :counter
    when "display_reflection"    ; type = :reflection
    when "display_substitute"    ; type = :substitute
    when "display_failure"       ; type = :failure
    when "display_critical"      ; type = :critical
    when "display_miss"          ; type = :miss
    when "display_evasion"       ; type = :evasion
    when "display_hp_damage"     ; type = :hp_damage
    when "display_mp_damage"     ; type = :mp_damage
    when "display_tp_damage"     ; type = :tp_damage
    when "display_added_state"   ; type = :added_st
    when "display_removed_state" ; type = :removed_st
    else; return []
    end
    BMSP::DamageEvent.commons(type, timing, @bmsp_damageevent_binding)
  end
  #--------------------------------------------------------------------------
  # ● マッチするイベントの実行
  #--------------------------------------------------------------------------
  def bmsp_dagameevent_execute_event(method, timing)
    commons = bmsp_dagameevent_match(method, timing)
    commons.each do |common|
      SceneManager.scene.method(:bmsp_damageevent_execute_common_event).call(common)
    end
  end
  #--------------------------------------------------------------------------
  # ● 反撃の表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_counter display_counter
  def display_counter(subject, action)
    target = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_counter(subject, action)
  end
  #--------------------------------------------------------------------------
  # ● 反射の表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_reflection display_reflection
  def display_reflection(subject, action)
    target = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_reflection(subject, action)
  end
  #--------------------------------------------------------------------------
  # ● 身代わりの表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_substitute display_substitute
  def display_substitute(subst, target)
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_substitute(subst, target)
  end
  #--------------------------------------------------------------------------
  # ● 失敗の表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_failure display_failure
  def display_failure(target, action)
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_failure(target, action)
  end
  #--------------------------------------------------------------------------
  # ● クリティカルヒットの表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_critical display_critical
  def display_critical(target, action)
    subject = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_critical(target, action)
  end
  #--------------------------------------------------------------------------
  # ● ミスの表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_miss display_miss
  def display_miss(target, action)
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_miss(target, action)
  end
  #--------------------------------------------------------------------------
  # ● 回避の表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_evasion display_evasion
  def display_evasion(target, action)
    subject = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_evasion(target, action)
  end
  #--------------------------------------------------------------------------
  # ● HP ダメージ表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_hp_damage display_hp_damage
  def display_hp_damage(target, action)
    subject = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_hp_damage(target, action)
  end
  #--------------------------------------------------------------------------
  # ● MP ダメージ表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_mp_damage display_mp_damage
  def display_mp_damage(target, action)
    subject = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_mp_damage(target, action)
  end
  #--------------------------------------------------------------------------
  # ● TP ダメージ表示
  #--------------------------------------------------------------------------
  alias bmsp_damageevent_display_tp_damage display_tp_damage
  def display_tp_damage(target, action)
    subject = SceneManager.scene.bmsp_damageevent_subject
    @bmsp_damageevent_binding = binding
    bmsp_damageevent_display_tp_damage(target, action)
  end
  #--------------------------------------------------------------------------
  # ● ステート付加の表示(再定義)
  #--------------------------------------------------------------------------
  def display_added_states(target)
    target.result.added_state_objects.each do |state|
      state_msg = target.actor? ? state.message1 : state.message2
      target.perform_collapse_effect if state.id == target.death_state_id
      next if state_msg.empty?
      subject = SceneManager.scene.bmsp_damageevent_subject
      @bmsp_damageevent_binding = binding
      bmsp_dagameevent_execute_event("display_added_state", :before)
      replace_text(target.name + state_msg)
      bmsp_dagameevent_execute_event("display_added_state", :after)
      wait
      wait_for_effect
    end
  end
  #--------------------------------------------------------------------------
  # ● ステート解除の表示(再定義)
  #--------------------------------------------------------------------------
  def display_removed_states(target)
    target.result.removed_state_objects.each do |state|
      next if state.message4.empty?
      subject = SceneManager.scene.instance_eval{@subject}
      @bmsp_damageevent_binding = binding
      bmsp_dagameevent_execute_event("display_removed_state", :before)
      replace_text(target.name + state.message4)
      bmsp_dagameevent_execute_event("display_removed_state", :after)
      wait
    end
  end
end
						