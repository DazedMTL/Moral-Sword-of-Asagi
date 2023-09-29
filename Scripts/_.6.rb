#==============================================================================
# ■ RGSS3 ステート重複付与禁止 Ver1.00 by 星潟
#------------------------------------------------------------------------------
# 　ステートの重複付与を禁止します。
# 　行動不能ステート中に同一の行動不能ステートが
# 　かけられるような事がなくなります。
#   
#   基本的に機能拡張依頼や競合対応は受け付けておりません。ご了承ください。
#==============================================================================
class Game_Battler < Game_BattlerBase
  #--------------------------------------------------------------------------
  # ● ステートの付加可能判定
  #--------------------------------------------------------------------------
  alias state_addable_over? state_addable?
  def state_addable?(state_id)
    return false if state?(state_id)
    state_addable_over?(state_id)
  end
  #--------------------------------------------------------------------------
  # ● 使用効果［ステート付加］：通常
  #--------------------------------------------------------------------------
  alias item_effect_add_state_normal_over item_effect_add_state_normal
  def item_effect_add_state_normal(user, item, effect)
    @result.success = true if state?(effect.data_id)
    item_effect_add_state_normal_over(user, item, effect)
  end
end