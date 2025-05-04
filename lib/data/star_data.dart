// 星座数据模型
class Constellation {
  final List<String> names; // 支持多个星座名称
  final List<Star> stars;

  Constellation({required this.names, required this.stars});
}

// 恒星数据模型
class Star {
  final String id;
  final List<String> names; // 支持多个恒星名称
  String? description; // 新添加的属性

  Star({required this.id, required this.names, required this.description});
}

// 季节数据模型
class SeasonData {
  final String season;
  final List<Constellation> constellations;

  SeasonData({required this.season, required this.constellations});
}

// 星座数据
final List<SeasonData> starData = [
  SeasonData(
    season: "冬季",
    constellations: [
      Constellation(
        names: ["御夫座"],
        stars: [
          Star(id: "", names: ["五车一"], description: ""),
          Star(id: "", names: ["五车二"], description: ""),
          Star(id: "", names: ["五车三"], description: ""),
          Star(id: "", names: ["五车四"], description: ""),
          Star(id: "", names: ["五车五"], description: ""),
          Star(id: "", names: ["柱一"], description: ""),
          Star(id: "", names: ["柱二"], description: ""),
          Star(id: "", names: ["柱三"], description: ""),
        ],
      ),
      Constellation(
        names: ["金牛座"],
        stars: [
          Star(id: "", names: ["毕宿五"], description: ""),
          Star(id: "", names: ["天关"], description: ""),
          Star(id: "", names: ["五车五"], description: ""),
          Star(id: "", names: ["昴宿星团"], description: ""),
        ],
      ),
      Constellation(
        names: ["双子座"],
        stars: [
          Star(id: "", names: ["井宿一"], description: ""),
          Star(id: "", names: ["井宿二"], description: ""),
          Star(id: "", names: ["井宿三"], description: ""),
          Star(id: "", names: ["井宿四"], description: ""),
          Star(id: "", names: ["井宿五"], description: ""),
          Star(id: "", names: ["井宿七"], description: ""),
          Star(id: "", names: ["井宿八"], description: ""),
          Star(id: "", names: ["钺"], description: ""),
          Star(id: "", names: ["天樽二"], description: ""),
          Star(id: "", names: ["五诸侯一"], description: ""),
          Star(id: "", names: ["五诸侯二"], description: ""),
          Star(id: "", names: ["五诸侯三"], description: ""),
          Star(id: "", names: ["五诸侯四"], description: ""),
          Star(id: "", names: ["积薪"], description: ""),
          Star(id: "", names: ["北河二"], description: ""),
          Star(id: "", names: ["北河三"], description: ""),
        ],
      ),
      Constellation(
        names: ["猎户座"],
        stars: [
          Star(id: "", names: ["参宿一"], description: ""),
          Star(id: "", names: ["参宿二"], description: ""),
          Star(id: "", names: ["参宿三"], description: ""),
          Star(id: "", names: ["参宿四"], description: ""),
          Star(id: "", names: ["参宿五"], description: ""),
          Star(id: "", names: ["参宿六"], description: ""),
          Star(id: "", names: ["参宿七"], description: ""),
          Star(id: "", names: ["觜宿一"], description: ""),
          Star(id: "", names: ["伐三"], description: ""),
          Star(id: "", names: ["参旗六"], description: ""),
          Star(id: "", names: ["参旗七"], description: ""),
          Star(id: "", names: ["参旗八"], description: ""),
        ],
      ),
      Constellation(
        names: ["小犬座"],
        stars: [
          Star(id: "", names: ["南河二"], description: ""),
          Star(id: "", names: ["南河三"], description: ""),
        ],
      ),
      Constellation(
        names: ["大犬座"],
        stars: [
          Star(id: "", names: ["天狼星"], description: ""),
          Star(id: "", names: ["军市一"], description: ""),
          Star(id: "", names: ["军市五"], description: ""),
          Star(id: "", names: ["军市增五"], description: ""),
          Star(id: "", names: ["弧矢一"], description: ""),
          Star(id: "", names: ["弧矢二"], description: ""),
          Star(id: "", names: ["弧矢增二"], description: ""),
          Star(id: "", names: ["弧矢七"], description: ""),
          Star(id: "", names: ["弧矢八"], description: ""),
          Star(id: "", names: ["孙增一"], description: ""),
        ],
      ),
      Constellation(
        names: ["天兔座"],
        stars: [
          Star(id: "", names: ["厕一"], description: ""),
          Star(id: "", names: ["厕二"], description: ""),
          Star(id: "", names: ["厕三"], description: ""),
          Star(id: "", names: ["厕四"], description: ""),
          Star(id: "", names: ["厕增六"], description: ""),
          Star(id: "", names: ["厕增七"], description: ""),
          Star(id: "", names: ["屏一"], description: ""),
          Star(id: "", names: ["屏二"], description: ""),
        ],
      ),
      Constellation(
        names: ["船尾座"],
        stars: [
          Star(id: "", names: ["船尾座ρ"], description: ""),
          Star(id: "", names: ["船尾座ξ"], description: ""),
          Star(id: "", names: ["船尾座ζ"], description: ""),
          Star(id: "", names: ["船尾座π"], description: ""),
          Star(id: "", names: ["船尾座σ"], description: ""),
          Star(id: "", names: ["船尾座γ"], description: ""),
          Star(id: "", names: ["船尾座τ"], description: ""),
        ],
      ),
      Constellation(
        names: ["伪南十字"],
        stars: [
          Star(id: "", names: ["海石一"], description: ""),
          Star(id: "", names: ["海石二"], description: ""),
          Star(id: "", names: ["天社二"], description: ""),
          Star(id: "", names: ["天社五"], description: ""),
          Star(id: "", names: ["天社一"], description: ""),
          Star(id: "", names: ["天记"], description: ""),
          Star(id: "", names: ["老人星"], description: ""),
        ],
      ),
    ],
  ),
  SeasonData(
    season: "春季",
    constellations: [
      Constellation(
        names: ["小熊座"],
        stars: [
          Star(id: "", names: ["勾陈一"], description: ""),
          Star(id: "", names: ["北极一（太子）"], description: ""),
          Star(id: "", names: ["北极二（帝）"], description: ""),
        ],
      ),
      Constellation(
        names: ["大熊座"],
        stars: [
          Star(id: "", names: ["天枢"], description: ""),
          Star(id: "", names: ["天璇"], description: ""),
          Star(id: "", names: ["天玑"], description: ""),
          Star(id: "", names: ["天权"], description: ""),
          Star(id: "", names: ["玉衡"], description: ""),
          Star(id: "", names: ["开阳"], description: ""),
          Star(id: "", names: ["摇光"], description: ""),
          Star(id: "", names: ["内阶一"], description: ""),
          Star(id: "", names: ["内阶四"], description: ""),
          Star(id: "", names: ["文昌二"], description: ""),
          Star(id: "", names: ["文昌四"], description: ""),
          Star(id: "", names: ["上台一"], description: ""),
          Star(id: "", names: ["上台二"], description: ""),
          Star(id: "", names: ["太阳守"], description: ""),
          Star(id: "", names: ["太尊"], description: ""),
          Star(id: "", names: ["中台一"], description: ""),
          Star(id: "", names: ["中台二"], description: ""),
          Star(id: "", names: ["下台一"], description: ""),
          Star(id: "", names: ["下台二"], description: ""),
        ],
      ),
      Constellation(
        names: ["牧夫座"],
        stars: [
          Star(id: "", names: ["大角星"], description: ""),
          Star(id: "", names: ["右摄提一"], description: ""),
          Star(id: "", names: ["梗河一"], description: ""),
          Star(id: "", names: ["梗河三"], description: ""),
          Star(id: "", names: ["七公七"], description: ""),
          Star(id: "", names: ["七公增五"], description: ""),
          Star(id: "", names: ["招摇"], description: ""),
        ],
      ),
      Constellation(
        names: ["北冕座"],
        stars: [
          Star(id: "", names: ["贯索四"], description: ""),
        ],
      ),
      Constellation(
        names: ["狮子座"],
        stars: [
          Star(id: "", names: ["轩辕九"], description: ""),
          Star(id: "", names: ["轩辕十"], description: ""),
          Star(id: "", names: ["轩辕十一"], description: ""),
          Star(id: "", names: ["轩辕十二"], description: ""),
          Star(id: "", names: ["轩辕十三"], description: ""),
          Star(id: "", names: ["轩辕十四"], description: ""),
          Star(id: "", names: ["轩辕十五"], description: ""),
          Star(id: "", names: ["轩辕十六"], description: ""),
          Star(id: "", names: ["太微右垣五（西上相）"], description: ""),
          Star(id: "", names: ["太微右垣四（西次相）"], description: ""),
          Star(id: "", names: ["五帝座一"], description: ""),
        ],
      ),
      Constellation(
        names: ["室女座"],
        stars: [
          Star(id: "", names: ["太微右垣一（右执法）"], description: ""),
          Star(id: "", names: ["太微左垣一（左执法）"], description: ""),
          Star(id: "", names: ["太微左垣二（东上相）"], description: ""),
          Star(id: "", names: ["太微左垣三（东次相）"], description: ""),
          Star(id: "", names: ["太微左垣四（东次将）"], description: ""),
          Star(id: "", names: ["角宿一"], description: ""),
          Star(id: "", names: ["角宿二"], description: ""),
          Star(id: "", names: ["室女座τ"], description: ""),
          Star(id: "", names: ["室女座109"], description: ""),
          Star(id: "", names: ["室女座κ"], description: ""),
          Star(id: "", names: ["室女座ι"], description: ""),
          Star(id: "", names: ["室女座μ"], description: ""),
        ],
      ),
      Constellation(
        names: ["乌鸦座"],
        stars: [
          Star(id: "", names: ["轸宿一"], description: ""),
          Star(id: "", names: ["轸宿二"], description: ""),
          Star(id: "", names: ["轸宿三"], description: ""),
          Star(id: "", names: ["轸宿四"], description: ""),
          Star(id: "", names: ["右辖"], description: ""),
          Star(id: "", names: ["左辖"], description: ""),
        ],
      ),
      Constellation(
        names: ["半人马座"],
        stars: [
          Star(id: "", names: ["柱十一（角宿）"], description: ""),
          Star(id: "", names: ["骑官三"], description: ""),
          Star(id: "", names: ["衡一"], description: ""),
          Star(id: "", names: ["衡二"], description: ""),
          Star(id: "", names: ["衡三"], description: ""),
          Star(id: "", names: ["库楼三"], description: ""),
          Star(id: "", names: ["库楼二"], description: ""),
          Star(id: "", names: ["库楼一"], description: ""),
          Star(id: "", names: ["库楼七"], description: ""),
          Star(id: "", names: ["南门一"], description: ""),
          Star(id: "", names: ["南门二"], description: ""),
          Star(id: "", names: ["马腹一"], description: ""),
          Star(id: "", names: ["马尾三"], description: ""),
          Star(id: "", names: ["海山五"], description: ""),
        ],
      ),
      Constellation(
        names: ["南十字座"],
        stars: [
          Star(id: "", names: ["十字架一"], description: ""),
          Star(id: "", names: ["十字架二"], description: ""),
          Star(id: "", names: ["十字架三"], description: ""),
          Star(id: "", names: ["十字架四"], description: ""),
          Star(id: "", names: ["十字架增一"], description: ""),
        ],
      ),
    ],
  ),
  SeasonData(
    season: "夏季",
    constellations: [
      Constellation(
        names: ["天鹅座"],
        stars: [
          Star(id: "", names: ["天津一"], description: ""),
          Star(id: "", names: ["天津二"], description: ""),
          Star(id: "", names: ["天津四"], description: ""),
          Star(id: "", names: ["天津八"], description: ""),
          Star(id: "", names: ["天津九"], description: ""),
          Star(id: "", names: ["奚仲一"], description: ""),
          Star(id: "", names: ["奚仲二"], description: ""),
          Star(id: "", names: ["辇道增五"], description: ""),
          Star(id: "", names: ["辇道增七"], description: ""),
          Star(id: "", names: ["天鹅座ο1"], description: ""),
          Star(id: "", names: ["天鹅座ο2"], description: ""),
        ],
      ),
      Constellation(
        names: ["天琴座"],
        stars: [
          Star(id: "", names: ["织女星"], description: ""),
        ],
      ),
      Constellation(
        names: ["天鹰座"],
        stars: [
          Star(id: "", names: ["河鼓一"], description: ""),
          Star(id: "", names: ["河鼓二"], description: ""),
          Star(id: "", names: ["河鼓三"], description: ""),
          Star(id: "", names: ["天桴一"], description: ""),
          Star(id: "", names: ["天桴四"], description: ""),
          Star(id: "", names: ["右旗三"], description: ""),
          Star(id: "", names: ["天市左垣六（吴越）"], description: ""),
          Star(id: "", names: ["天弁七"], description: ""),
        ],
      ),
      Constellation(
        names: ["农夫与蛇"],
        stars: [
          Star(id: "", names: ["候"], description: ""),
          Star(id: "", names: ["天市左垣八（东海）"], description: ""),
          Star(id: "", names: ["天市左垣九（燕）"], description: ""),
          Star(id: "", names: ["天市左垣十（南海）"], description: ""),
          Star(id: "", names: ["天市左垣十一（宋）"], description: ""),
          Star(id: "", names: ["天市右垣十一（韩）"], description: ""),
          Star(id: "", names: ["天市右垣十（楚）"], description: ""),
          Star(id: "", names: ["天市右垣九（梁）"], description: ""),
          Star(id: "", names: ["天市右垣八（巴）"], description: ""),
          Star(id: "", names: ["天市右垣七（蜀）"], description: ""),
          Star(id: "", names: ["天市右垣六（秦）"], description: ""),
          Star(id: "", names: ["天市右垣五（周）"], description: ""),
          Star(id: "", names: ["天市右垣四（郑）"], description: ""),
        ],
      ),
      Constellation(
        names: ["天秤座"],
        stars: [
          Star(id: "", names: ["氐宿一"], description: ""),
          Star(id: "", names: ["氐宿三"], description: ""),
          Star(id: "", names: ["氐宿四"], description: ""),
          Star(id: "", names: ["折威七"], description: ""),
          Star(id: "", names: ["天辐一"], description: ""),
          Star(id: "", names: ["天辐二"], description: ""),
        ],
      ),
      Constellation(
        names: ["天蝎座"],
        stars: [
          Star(id: "", names: ["房宿一"], description: ""),
          Star(id: "", names: ["房宿二"], description: ""),
          Star(id: "", names: ["房宿三"], description: ""),
          Star(id: "", names: ["房宿四"], description: ""),
          Star(id: "", names: ["心宿一"], description: ""),
          Star(id: "", names: ["心宿二"], description: ""),
          Star(id: "", names: ["心宿三"], description: ""),
          Star(id: "", names: ["天蝎座μ1"], description: ""),
          Star(id: "", names: ["天蝎座μ2"], description: ""),
          Star(id: "", names: ["天蝎座ζ1"], description: ""),
          Star(id: "", names: ["天蝎座ζ2"], description: ""),
          Star(id: "", names: ["尾宿二"], description: ""),
          Star(id: "", names: ["尾宿四"], description: ""),
          Star(id: "", names: ["尾宿五"], description: ""),
          Star(id: "", names: ["尾宿六"], description: ""),
          Star(id: "", names: ["尾宿七"], description: ""),
          Star(id: "", names: ["尾宿八"], description: ""),
          Star(id: "", names: ["尾宿九"], description: ""),
        ],
      ),
      Constellation(
        names: ["人马座"],
        stars: [
          Star(id: "", names: ["斗宿一"], description: ""),
          Star(id: "", names: ["斗宿二"], description: ""),
          Star(id: "", names: ["斗宿三"], description: ""),
          Star(id: "", names: ["斗宿四"], description: ""),
          Star(id: "", names: ["斗宿五"], description: ""),
          Star(id: "", names: ["斗宿六"], description: ""),
          Star(id: "", names: ["箕宿一"], description: ""),
          Star(id: "", names: ["箕宿二"], description: ""),
          Star(id: "", names: ["箕宿三"], description: ""),
          Star(id: "", names: ["箕宿四"], description: ""),
          Star(id: "", names: ["建一"], description: ""),
          Star(id: "", names: ["建二"], description: ""),
          Star(id: "", names: ["建三"], description: ""),
        ],
      ),
    ],
  ),
  SeasonData(
    season: "秋季",
    constellations: [
      Constellation(
        names: ["仙王座"],
        stars: [
          Star(id: "", names: ["造父一"], description: ""),
          Star(id: "", names: ["造父二"], description: ""),
          Star(id: "", names: ["造父四"], description: ""),
          Star(id: "", names: ["造父五"], description: ""),
          Star(id: "", names: ["天钩四"], description: ""),
          Star(id: "", names: ["天钩五"], description: ""),
          Star(id: "", names: ["天钩八"], description: ""),
          Star(id: "", names: ["上卫增一"], description: ""),
          Star(id: "", names: ["少卫增八"], description: ""),
        ],
      ),
      Constellation(
        names: ["仙后座"],
        stars: [
          Star(id: "", names: ["王良一"], description: ""),
          Star(id: "", names: ["王良四"], description: ""),
          Star(id: "", names: ["策"], description: ""),
          Star(id: "", names: ["阁道三"], description: ""),
          Star(id: "", names: ["阁道二"], description: ""),
          Star(id: "", names: ["王良二"], description: ""),
          Star(id: "", names: ["螣蛇十二"], description: ""),
        ],
      ),
      Constellation(
        names: ["秋季四边形"],
        stars: [
          Star(id: "", names: ["室宿一"], description: ""),
          Star(id: "", names: ["室宿二"], description: ""),
          Star(id: "", names: ["壁宿一"], description: ""),
          Star(id: "", names: ["壁宿二"], description: ""),
          Star(id: "", names: ["危宿三"], description: ""),
          Star(id: "", names: ["危宿一"], description: ""),
          Star(id: "", names: ["奎宿九"], description: ""),
          Star(id: "", names: ["天大将军一"], description: ""),
        ],
      ),
      Constellation(
        names: ["英仙座"],
        stars: [
          Star(id: "", names: ["天船一"], description: ""),
          Star(id: "", names: ["天船二"], description: ""),
          Star(id: "", names: ["天船三"], description: ""),
          Star(id: "", names: ["天船五"], description: ""),
          Star(id: "", names: ["卷舌一"], description: ""),
          Star(id: "", names: ["卷舌二"], description: ""),
          Star(id: "", names: ["卷舌三"], description: ""),
          Star(id: "", names: ["卷舌四"], description: ""),
          Star(id: "", names: ["卷舌五"], description: ""),
          Star(id: "", names: ["大陵四"], description: ""),
          Star(id: "", names: ["大陵五"], description: ""),
          Star(id: "", names: ["大陵六"], description: ""),
        ],
      ),
      Constellation(
        names: ["南鱼座"],
        stars: [
          Star(id: "", names: ["北落师门"], description: ""),
        ],
      ),
      Constellation(
        names: ["波江座"],
        stars: [
          Star(id: "", names: ["水委一"], description: ""),
        ],
      ),
    ],
  ),
];
