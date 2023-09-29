=begin
ＲＰＧツクールＶＸＡｃｅ用スクリプト素材
拡張反撃

２０１２年１１月２８日
２０１４年０７月０３日　改訂
一炊の夢、一酔の幻　製作
http://tamurarpgvx.blog137.fc2.com/

【概要】
いろいろな反撃を作成できます。
①スキル３番の「攻撃」だけでなく、色々なスキルで反撃できます。
②反撃のタイミングを、ＶＸＡＣＥ通常の「ダメージ発生前に反撃し、
ダメージをキャンセルする」か、「ダメージを受けた後」か選ぶ事が出来ます。


【導入方法】
スクリプトエディタを開き、左のリストの一番下、「ここに追加」と書いてある部分の
下の空欄を選び、右クリック、「挿入」を選ぶ。
出来た空欄に、「名前」の所でファイル名を入れておくといい。
右に空白の領域に、このテキストファイル全文をコピーして貼り付け。


【使い方】
アクター・敵キャラ・武器防具・ステートいずれかの「メモ欄」に、
以下のように記述します。

アクターや敵キャラなら常時、武器防具なら装備している時、
ステートなら付加されている時に効果を発揮します。

①　まず、以下の文を記述します。
<cnt_basic;XXX;YYY>　：　この一文は必須です。攻撃を受けた際、スキルＸＸＸ番を、
    ＹＹＹ％の確率で反撃として使用します。
    
②　次に、
以下の文を記述すると、反撃は「ダメージを受けた後」に実行します。
書かなければ、ＶＸＡＣＥの通常通り「ロマンシングサガ式」となります。
<cnt_damage>          :相手からのダメージ受けてから反撃します。

　特殊な反撃として、さらに以下を追加することもできます。
<cnt_decoy>           :おとり反撃になります。※下記参照。
　　　　　　　　　　　:このスクリプトが無変更の状態だと、これを記述した反撃は
　　　　　　　　　　　:一切作動しません。
<cnt_tender>          :監視反撃になります。　※下記参照。
                       上記、おとり反撃と同じく、下記を参照に変更しないと
                       動作しません。
<no_damage_cansel>    :ミス・回避・ダメージ０だったときは、反撃が行われません。

    
③　最後に、以下のように条件を表す文を記述します。これらも必須となります。
<cnt_physical>       ：全ての物理攻撃（スキル設定の命中タイプが「物理攻撃」）に反撃します。
<cnt_magical>        ：全ての魔法に（スキル設定の命中タイプが「魔法攻撃」）反撃します。
<cnt_element;A;B;C>   :属性Ａ，Ｂ、Ｃ番のいずれかで攻撃されたときに反撃。
<cnt_skill;AAA;BBB>   :スキルＡＡＡ，ＢＢＢ番のいずれかで攻撃されたときに反撃。
<cnt_all>             :すべての行動に反撃します。　※通常は使いません。
                       invoke_counter_skill　を編集するときに使います。


<cnt_element;1;3>や<cnt_skill;5;6;7>など、指定する数はいくつでも可能です。

複数①を記述する場合は、①から、次の①までの間に、②と③を記述します。
ある①から、次の①までの間にある②と③が、最初の①の発動条件となります。



【おとり反撃について】
自分で無く、パーティの誰かが攻撃を受けた際に、反撃を行うことを、
ここでは「おとり反撃」と呼称します。
①まず、下のコードの、２か所ある　cnt_by_party　の＃を消して、文字を緑から
　通常の色にします。
　検索機能で探してください。
②メモ欄に<cnt_decoy>と記述します。これで、自分が攻撃されても発動しなくなります。
　代わりに、味方の誰かが反撃された時、属性などの条件が満たされていれば
　反撃を行います。
③アクターＸ番の者が攻撃された時、といった設定も可能です。
　このスクリプトの、invoke_counter_skillメソッドの内部を参考にしてください。
　（２７０行目あたり？　改訂によってずれます。）
　＃を消すと働くようになります。


【監視反撃について】
自分がターゲットで無く、敵がある行動をとった時に反撃を行うことを、
ここでは「監視反撃」と呼称します。
①まず、下のコードの、２か所ある　cnt_by_party　の＃を消して、文字を緑から
　通常の色にします。
　検索機能で探してください。
②メモ欄に<cnt_tender>と記述します。これで、自分が攻撃されても発動しなくなります。
　敵がある行動を取った時に、反撃を行うようになります。
③invoke_counter_skill　のところの、＃が付いている部分を参考に、条件を設定します。


【追撃】
上記、監視反撃の応用として、味方が攻撃した時に、ほかの味方が追撃する、
といったことが可能です。
①まずは、上記に従い、ステートやアクターのメモ欄に「監視反撃」を作成してください。
②メモ欄に追加で　<tuigeki>　と記述してください。

追撃は<cnt_damage>を付けたほうがいいかもしれません。でないと、本来の攻撃が
キャンセルされ、追撃しか作動しません。


【反撃無効】
スキルのメモ欄に
<cnt_cansel>
と記述すれば、そのスキルに対しては反撃は起こりません。


【コピー反撃】
まず、上記の手順に従って、ダメージ後反撃を作ります。そのあとすぐに
<cnt_copy>
と記述すると、攻撃してきたスキルを使って反撃します。
<cnt_basic;XXX;YYY>においてＸＸＸは、何を指定してもそのスキルは使いません。



【その他の条件】
・invoke_counter_skillメソッドに、ＨＰが半分以下の時などの条件を作成してみました。
＃を消すと働きだします。
これを参考に、いろいろいじってみてください。

・競合する場合は、def invoke_item　という文字列を検索して、
もし同じ場所がアンチエイリアスを使って改造（aliasという文字列が近くにある）
してあるスクリプトがあれば、それよりも上に設置してみてください。
再定義（aliasどうのこうのでなく、def invoke_itemそのものが見つかった）の場合には
残念ながら共存できません。


【注意事項】
・ももまるLib殿のＸＰスタイルバトルと併用する場合には、このスクリプトを
ＸＰスタイルバトルの下に配置し、さらに　XP_STYLE_BATTLE=true　としてください。
使用しない場合は　XP_STYLE_BATTLE = false　です。

・もし、「ダメージを受けた後」の反撃と、「ＶＸＡＣＥデフォルトのタイミング」の
反撃が同時に発生した場合、「ＶＸＡＣＥデフォルトのタイミング」のみ発動します。




【更新履歴】
2012.05.12　アクター・敵キャラ・装備のメモ欄も読み取るようにした。
            一つのメモ欄に、複数の反撃の設定を出来るようにした。
2012.05.15　おとり反撃機能の追加。
　　　　　　その他、より複雑な条件の例を作成。
2012.05.20　通常攻撃に対する属性の判定がおかしかったのを修正。
　　　　　　通常攻撃アニメーションが正常に表示されないのを修正。
2012.07.16　反撃スキルが「敵単体」を目標とする場合、ターゲットを正常に
　　　　　　取得できなくなっていたのを修正。
2012.10.18　XPスタイルバトルと併用時にポップアップ発生。
2012.10.21　定数のミス（XP_STYLE_BATTLEがどうのと言われるエラー）の修正。
2012.11.27　敵の行動を監視して、特定の行動に反撃する「監視反撃」を作成。
2013.03.07　追撃機能を作成。
2013.07.18　コメントを少し変更。
2013.07.23　反撃無効スキルを作成。
2013.07.24　カウンタースキルのコモンイベントを実施できるようにした。
2013.09.06　行動主体者が、行動制限が「行動できない」となっているステートになると、
            それ以上行動できなくなるようにした（連続攻撃できるスキルへの対策）。
2013.11.07　複数回攻撃できるスキルに呼応して、追撃を行うと、何もないところを
            攻撃するのを修正。
2013.11.12　反撃スキルが単体以外だった場合にエラーが発生するのを修正。
2013.12.08　アイテムへの反撃でエラー落ちする不具合を修正。
2014.04.07　二つ以上の反撃を記述、かつ一方を監視反撃にすると、すべての反撃が
　　　　　　監視反撃とみなされる不具合の修正。
2014.04.24　反撃無効のスキルが、ツクール通常の反撃には無効であったのを修正。
2014.07.01　ノーダメージならば反撃しない機能<no_damage_cansel>を追加。
　　　　　　コピー反撃機能の作成。
2014.07.03　<no_damage_cansel>が追撃でも動作するようにした。
            
=end


module Tamura_Cnt
  
  #ももまるLib殿のＸＰバトルを使用する場合にはtrueにしてください。
  XP_STYLE_BATTLE = true
  
  #コピー反撃機能で使用。以下のスキルは使用しないでください。
  SKILL_COPY_ID = 6
end


#==============================================================================
# ■ Scene_Battle
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================
class Scene_Battle < Scene_Base
  #--------------------------------------------------------------------------
  # ● スキル／アイテムの発動
  #--------------------------------------------------------------------------
  def invoke_item(target, item)
    return unless @subject.movable? #行動主体者が行動不能になった場合は行動しない。
    @main_cnt_user = target #攻撃を受けた者を記録。
    @counter_done = false #反撃済みフラグをリセット。
    if rand < target.item_cnt(@subject, item) && !(/<cnt_cansel>/ =~ item.note) #反撃
      invoke_counter_attack(target, item)
    elsif rand < target.item_mrf(@subject, item) && !(/<cnt_cansel>/ =~ item.note)  #魔法反射
      invoke_magic_reflection(target, item) #魔法反射
    else
      cnt_states_search(target, item , false) #通常タイミングの反撃。
      cnt_by_party(target, item , false)
      unless @counter_done #反撃済みなら以下を飛ばす。
        apply_item_effects(apply_substitute(target, item), item) #通常処理。
        cnt_states_search(target, item , true)#被ダメージ反撃。
        cnt_by_party(target, item , true)
      end
    end
    @subject.last_target_index = target.index
  end
  #--------------------------------------------------------------------------
  # ● 攻撃を受けたものでは無く、味方が反撃を行う場合の処理。
  #　　敵の行動を監視する場合もこのメソッドを使用する。
  #--------------------------------------------------------------------------
  def cnt_by_party(cnt_user, item , after_damege)
    cnt_members = $game_party.members + $game_troop.members
    cnt_members.each do |member|
      next if cnt_user == member #攻撃を受けた本人は反撃しない。
      cnt_states_search(member, item , after_damege , true)
    end
  end
  #--------------------------------------------------------------------------
  # ●　ステート・アクター・装備・エネミーのメモ欄に反撃の記述があるか調べ、
  #　　あればその度に実行。
  # target : 反撃を実行する者。
  # item : 相手が使用したスキル
  # after_damege　：　ダメージ後に反撃する場合はtrue
  # decoy　：　自分では無く、味方が反撃する場合はtrue
  #--------------------------------------------------------------------------
  def cnt_states_search(target, item , after_damege , decoy = false)
    target.states.each do |state| #すべてのステート
      cnt_note_search(target, item , after_damege , state.note , decoy)
    end
    if target.actor?
      cnt_note_search(target, item , after_damege ,
        $data_actors[target.id].note , decoy) #アクター
      target.equips.each do |equip| #すべての装備
        next unless equip
        cnt_note_search(target, item , after_damege , equip.note , decoy)
      end
    else
      cnt_note_search(target, item , after_damege ,
        $data_enemies[target.enemy_id].note , decoy) #エネミー
    end
  end
  #--------------------------------------------------------------------------
  # ●　メモ欄を受け取り、反撃の記述があれば実行。
  #decoy : 現在、囮反撃のタイミングであればtrue。 target：反撃を実行する人
  #--------------------------------------------------------------------------
  def cnt_note_search(target, item , after_damege , note , decoy)
    if /<cnt_basic;/ =~ note
      search_arry = make_combi_arry(note)
      search_arry.each { |n|
        #囮反撃・監視反撃のタイミングなら以下を実行。
        next if decoy and /<cnt_decoy>/ !~ n and /<cnt_tender>/ !~ n
        #囮反撃なら、自分がターゲットの時は発動しない。
        next if decoy and /<cnt_decoy>/ =~ n and @main_cnt_user == target
        #囮反撃・監視反撃のタイミングでないのなら、ここで囮反撃・監視反撃は実行しない。
        next if decoy == false and /<cnt_decoy>/ =~ n
        next if decoy == false and /<cnt_tender>/ =~ n
        #囮反撃なら、敵がターゲットの時は実行しない。
        if /<cnt_decoy>/ =~ n
          next if decoy == false
          next unless friend?(target , @main_cnt_user)
        end
        #監視反撃なら、味方がターゲットの時は実行しない。
        if /<cnt_tender>/ =~ n
          next if decoy == false
          next if friend?(target , @main_cnt_user)
        end
        #<no_damage_cansel>の記述があり、ダメージなしのときは実行しない。
        if /<no_damage_cansel>/ =~ n
          if /<tuigeki>/ =~ n
            if @main_cnt_user.result.hp_damage == 0 and 
              @main_cnt_user.result.hp_drain == 0 and 
              @main_cnt_user.result.mp_damage == 0 and 
              @main_cnt_user.result.mp_drain == 0
                next 
            end
          else
            if target.result.hp_damage == 0 and target.result.hp_drain == 0 and 
              target.result.mp_damage == 0 and target.result.mp_drain == 0
              next 
            end
          end
        end
        #反撃の処理・ここではダメージ後の反撃のみ。
        if /<cnt_damage>/ =~ n
          #被ダメージの反撃
          next unless after_damege
          invoke_counter_skill(target, item , n)
        else
          #通常タイミングの反撃。
          next if after_damege
          invoke_counter_skill(target, item , n)
        end
      }
    end
  end
  #--------------------------------------------------------------------------
  # ●　メンバーＡとメンバーＢが味方であるか？
  #--------------------------------------------------------------------------
  def friend?(member_a , member_b)
    return true if member_a.actor? &&  member_b.actor?
    return true if member_a.enemy? &&  member_b.enemy?
    return false
  end
  #--------------------------------------------------------------------------
  # ●　反撃が複数記述されていた場合に備え、メモ欄を分割する。
  #--------------------------------------------------------------------------
  def make_combi_arry(note)
    return_arry = []
    return_arry = note.split("<cnt_basic;")
    return_arry.delete_at(0)
    for i in 0 ... return_arry.size
      return_arry[i] = "<cnt_basic;" + return_arry[i]
    end
    return return_arry
  end
  #--------------------------------------------------------------------------
  # ● 反撃の発動（スキル反撃）　また、反撃に反撃しない。
  #--------------------------------------------------------------------------
  def invoke_counter_skill(cnt_user, item , note)
    #反撃条件調査
    str1 = note.scan(/<cnt_basic;(\d+);(\d+)>/)
    return false if str1 == []
    return false if /<cnt_cansel>/ =~ item.note #反撃無効
    return false unless rand(100) < str1[0][1].to_i #反撃率
    return unless cnt_roll(cnt_user, item , note) #反撃条件
    return unless @subject.current_action #バグ対策(攻撃主体がすでに戦闘不能)
    
    #カウンタースキル（実際に反撃で発動するスキル）の選定
    if /<cnt_copy>/ =~ note #コピー反撃
      skill = @subject.current_action.item #相手が使ってきたスキル・アイテム
      copy_pre_skill = Marshal.load(Marshal.dump($data_skills[Tamura_Cnt::SKILL_COPY_ID])) #元のデータ保持
      $data_skills[Tamura_Cnt::SKILL_COPY_ID] = Marshal.load(Marshal.dump(skill)) #データ書き換え
      attack_skill = $data_skills[Tamura_Cnt::SKILL_COPY_ID]
    else
      attack_skill = $data_skills[str1[0][0].to_i]
    end
    
    #カウンタースキルが5番のとき、反撃実行者のＨＰが半分以上ある時は発動しない
    #if attack_skill.id == 5
    # return false if cnt_user.hp > ( cnt_user.mhp / 2 )
    #end
    
    #カウンタースキルが5番のとき、反撃者がステート２、３，４番のどれもでもない時は発動しない
    #if attack_skill.id == 5
    # states_id = []
    # cnt_user.states.each do |state| states_id.push state.id end
    # return false if states_id & [2,3,4] == []
    #end
    
    #カウンタースキルが70番のとき、攻撃を受けた者がアクター２番でない時は発動しない
    #if attack_skill.id == 70
    #  return false if @main_cnt_user != $game_actors[2]
    #end
    

    #カウンタースキルが146番のとき、現在行動者のスキルが回復スキル以外だと発動しない
    #if attack_skill.id == 146
    #  skill = @subject.current_action.item
    #  if skill.is_a?(RPG::Skill)
    #    return false unless skill.damage.recover?
    #  else
    #    return false
    #  end
    #end
    
    
    #カウンタースキルが148番のとき、現在行動者がアイテムを使ったとき以外だと発動しない
    #if attack_skill.id == 148
    # skill = @subject.current_action.item
    #  return false unless skill.is_a?(RPG::Item)
    #end

    
    #反撃の処理・ＸＰスタイルバトル使用の時。
    @log_window.display_use_item(cnt_user, attack_skill)
    @log_window.popup_data.popup_text(cnt_user, :counter) if Tamura_Cnt::XP_STYLE_BATTLE
    @log_window.popup_data.add_wait if Tamura_Cnt::XP_STYLE_BATTLE
    
    #反撃の処理
    refresh_status
    counter_action = Game_Action.new(cnt_user)
    counter_action.set_skill(attack_skill.id)
    targets = cnt_target(cnt_user, attack_skill , note , counter_action)

    #ターゲット全滅の時は、それ以上実行しない。
    targets = cnt_target(cnt_user, attack_skill , note , counter_action)
    return if targets.select {|member| member.alive? } == []
    
    #反撃の処理
    show_animation(targets, attack_skill.animation_id , cnt_user)
    targets.each {|target| attack_skill.repeats.times { 
        apply_item_effects_user(apply_substitute(target, attack_skill),
          attack_skill,cnt_user)
      } 
    }
    
    #カウンタースキルのコモンイベント
    #行動主体者が本来実行すべきコモンイベントを保存しておく。
    main_item_common = Marshal.load(Marshal.dump($game_temp.common_event_id))
    #カウンタースキルの特徴を調べてコモンイベントを実行する。
    attack_skill.effects.each {|effect|
      if effect.code == 44
        $game_temp.reserve_common_event(effect.data_id)
        wait_for_event
      end
    }
    #行動主体者のコモンイベントを実行する
    $game_temp.reserve_common_event(main_item_common) 
    
    @counter_done = true #反撃済みフラグＯＮ。
    
    #コピー反撃終了
    if /<cnt_copy>/ =~ note #コピー反撃で書き換えたデータをもとに戻す。
      $data_skills[Tamura_Cnt::SKILL_COPY_ID] = Marshal.load(Marshal.dump(copy_pre_skill))
    end
  end
  #--------------------------------------------------------------------------
  # ● イベントが終了するまでウェイト
  #　　最大でも１秒以上は待たない。
  #--------------------------------------------------------------------------
  def wait_for_event
    limit_count = 60
    loop do
      process_event #updateだと、戦闘行動まで繰り返してしまう！
      $game_troop.interpreter.update #戦闘中のインタープリタ
      break unless $game_troop.interpreter.running?
      limit_count -= 1
      if limit_count < 0
        p "警告：シーンが停止しました。"
        break
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 反撃のターゲットの作成
  #--------------------------------------------------------------------------
  def cnt_target(cnt_user, attack_skill , note , counter_action)
    if /<tuigeki>/ =~ note
      #追撃　アクターの行動時にアクターが反撃（追撃）する。
      if attack_skill.scope == 1 #反撃スキルが「敵単体」の場合
        num = (attack_skill.id == 1 ? (cnt_user.atk_times_add.to_i + 1) : 1)
        return [@main_cnt_user] * num
      else
        return counter_action.make_targets.compact
      end
    else
      #反撃　エネミーの行動時にアクターが反撃する。
      if attack_skill.scope == 1 #反撃スキルが「敵単体」の場合は攻撃者へ反撃。
        num = (attack_skill.id == 1 ? (cnt_user.atk_times_add.to_i + 1) : 1)
        return [@subject] * num
      else
        return counter_action.make_targets.compact
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 反撃の条件を満たすか？　満たせばtrue
  #--------------------------------------------------------------------------
  def cnt_roll(cnt_user, item , note)
    return true if /<cnt_all>/ =~ note #（特殊）全ての行動に反撃。
    return false unless cnt_user.movable? #行動不能なら反撃なし。
    return true if /<cnt_physical>/ =~ note and item.physical?  #物理
    return true if /<cnt_magical>/ =~ note and item.magical?  #魔法
    if /<cnt_element;/ =~ note #指定属性
      str2 = note.scan(/<cnt_element(\S+)>/)
      str3 = str2[0][0].scan(/;(\d+)/)
      cnt_element = []
      str3.each {|str| cnt_element.push str[0].to_i}
      if item.damage.element_id == -1 #通常攻撃
        elem = cnt_user.atk_elements.empty? ? [1] : cnt_user.atk_elements
        #p elem #test
        #p cnt_element #test
        return true if (cnt_element & elem) != []
      else #スキル
        return true if cnt_element.include?(item.damage.element_id)
      end
    end
    if /<cnt_skill;/ =~ note #指定スキル
      str2 = note.scan(/<cnt_skill(\S+)>/)
      str3 = str2[0][0].scan(/;(\d+)/)
      cnt_skills = []
      str3.each {|str| cnt_skills.push str[0].to_i}
      return true if cnt_skills.include?(item.id)
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● スキル／アイテムの効果を適用　反撃用に行動者を指定できる。
  #--------------------------------------------------------------------------
  def apply_item_effects_user(target, item , user)
    target.item_apply(user, item)
    refresh_status
    @log_window.display_action_results(target, item)
  end
  #--------------------------------------------------------------------------
  # ● アニメーションの表示
  #     targets      : 対象者の配列
  #     animation_id : アニメーション ID（-1: 通常攻撃と同じ）
  #--------------------------------------------------------------------------
  def show_animation_cnt(targets, animation_id , cnt_attacker = nil)
    if cnt_attacker
      if animation_id < 0
        if cnt_attacker
          show_attack_animation(targets , cnt_attacker)
        else
          show_attack_animation(targets)
        end
      else
        show_normal_animation(targets, animation_id)
      end
      @log_window.wait
      wait_for_animation
    else
      show_animation_cnt_default(targets, animation_id)
    end
  end
  alias :show_animation_cnt_default :show_animation
  alias :show_animation :show_animation_cnt
  #--------------------------------------------------------------------------
  # ● 攻撃アニメーションの表示
  #     targets : 対象者の配列
  #    アクターの場合は二刀流を考慮（左手武器は反転して表示）。
  #    敵キャラの場合は [敵の通常攻撃] 効果音を演奏して一瞬待つ。
  #--------------------------------------------------------------------------
  def show_attack_animation_cnt(targets , cnt_attacker = nil)
    if cnt_attacker
      if cnt_attacker.actor?
        show_normal_animation(targets, cnt_attacker.atk_animation_id1, false)
        show_normal_animation(targets, cnt_attacker.atk_animation_id2, true)
      else
        if Tamura_Cnt::XP_STYLE_BATTLE
          show_normal_animation(targets, cnt_attacker.atk_animation, false)
        else
          Sound.play_enemy_attack
          abs_wait_short
        end
      end
    else
      show_attack_animation_cnt_default(targets)
    end
  end
  alias :show_attack_animation_cnt_default :show_attack_animation 
  alias :show_attack_animation :show_attack_animation_cnt
end
#=end

=begin
制作者メモ
・cnt_note_searchにおける、反撃許可の条件
　<cnt_decoy>
　　自分がターゲットでなく、敵がターゲットでない。
　<cnt_tender>
　　自分がターゲットでなく、味方がターゲットでない。
=end




