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

  Star({required this.id, required this.names});
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
          Star(id: "", names: ["五车一"]),
          Star(id: "", names: ["五车二"]),
          Star(id: "", names: ["五车三"]),
          Star(id: "", names: ["五车四"]),
          Star(id: "", names: ["五车五"]),
          Star(id: "", names: ["柱一"]),
          Star(id: "", names: ["柱二"]),
          Star(id: "", names: ["柱三"]),
        ],
      ),
      Constellation(
        names: ["金牛座"],
        stars: [
          Star(id: "", names: ["毕宿五"]),
          Star(id: "", names: ["天关"]),
          Star(id: "", names: ["五车五"]),
          Star(id: "", names: ["昴宿星团"]),
        ],
      ),
      Constellation(
        names: ["双子座"],
        stars: [
          Star(id: "", names: ["井宿一"]),
          Star(id: "", names: ["井宿二"]),
          Star(id: "", names: ["井宿三"]),
          Star(id: "", names: ["井宿四"]),
          Star(id: "", names: ["井宿五"]),
          Star(id: "", names: ["井宿七"]),
          Star(id: "", names: ["井宿八"]),
          Star(id: "", names: ["钺"]),
          Star(id: "", names: ["天樽二"]),
          Star(id: "", names: ["五诸侯一"]),
          Star(id: "", names: ["五诸侯二"]),
          Star(id: "", names: ["五诸侯三"]),
          Star(id: "", names: ["五诸侯四"]),
          Star(id: "", names: ["积薪"]),
          Star(id: "", names: ["北河二"]),
          Star(id: "", names: ["北河三"]),
        ],
      ),
      Constellation(
        names: ["猎户座"],
        stars: [
          Star(id: "", names: ["参宿一"]),
          Star(id: "", names: ["参宿二"]),
          Star(id: "", names: ["参宿三"]),
          Star(id: "", names: ["参宿四"]),
          Star(id: "", names: ["参宿五"]),
          Star(id: "", names: ["参宿六"]),
          Star(id: "", names: ["参宿七"]),
          Star(id: "", names: ["觜宿一"]),
          Star(id: "", names: ["伐三"]),
          Star(id: "", names: ["参旗六"]),
          Star(id: "", names: ["参旗七"]),
          Star(id: "", names: ["参旗八"]),
        ],
      ),
      Constellation(
        names: ["小犬座"],
        stars: [
          Star(id: "", names: ["南河二"]),
          Star(id: "", names: ["南河三"]),
        ],
      ),
      Constellation(
        names: ["大犬座"],
        stars: [
          Star(id: "", names: ["天狼星"]),
          Star(id: "", names: ["军市一"]),
          Star(id: "", names: ["军市五"]),
          Star(id: "", names: ["军市增五"]),
          Star(id: "", names: ["弧矢一"]),
          Star(id: "", names: ["弧矢二"]),
          Star(id: "", names: ["弧矢增二"]),
          Star(id: "", names: ["弧矢七"]),
          Star(id: "", names: ["弧矢八"]),
          Star(id: "", names: ["孙增一"]),
        ],
      ),
      Constellation(
        names: ["天兔座"],
        stars: [
          Star(id: "", names: ["厕一"]),
          Star(id: "", names: ["厕二"]),
          Star(id: "", names: ["厕三"]),
          Star(id: "", names: ["厕四"]),
          Star(id: "", names: ["厕增六"]),
          Star(id: "", names: ["厕增七"]),
          Star(id: "", names: ["屏一"]),
          Star(id: "", names: ["屏二"]),
        ],
      ),
      Constellation(
        names: ["船尾座"],
        stars: [
          Star(id: "", names: ["船尾座ρ"]),
          Star(id: "", names: ["船尾座ξ"]),
          Star(id: "", names: ["船尾座ζ"]),
          Star(id: "", names: ["船尾座π"]),
          Star(id: "", names: ["船尾座σ"]),
          Star(id: "", names: ["船尾座γ"]),
          Star(id: "", names: ["船尾座τ"]),
        ],
      ),
      Constellation(
        names: ["伪南十字"],
        stars: [
          Star(id: "", names: ["海石一"]),
          Star(id: "", names: ["海石二"]),
          Star(id: "", names: ["天社二"]),
          Star(id: "", names: ["天社五"]),
          Star(id: "", names: ["天社一"]),
          Star(id: "", names: ["天记"]),
          Star(id: "", names: ["老人星"]),
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
          Star(id: "", names: ["勾陈一"]),
          Star(id: "", names: ["北极一（太子）"]),
          Star(id: "", names: ["北极二（帝）"]),
        ],
      ),
      Constellation(
        names: ["大熊座"],
        stars: [
          Star(id: "", names: ["天枢"]),
          Star(id: "", names: ["天璇"]),
          Star(id: "", names: ["天权"]),
          Star(id: "", names: ["玉衡"]),
          Star(id: "", names: ["开阳"]),
          Star(id: "", names: ["摇光"]),
          Star(id: "", names: ["内阶一"]),
          Star(id: "", names: ["内阶四"]),
          Star(id: "", names: ["文昌二"]),
          Star(id: "", names: ["文昌四"]),
          Star(id: "", names: ["上台一"]),
          Star(id: "", names: ["上台二"]),
          Star(id: "", names: ["太阳守"]),
          Star(id: "", names: ["太尊"]),
          Star(id: "", names: ["中台一"]),
          Star(id: "", names: ["中台二"]),
          Star(id: "", names: ["下台一"]),
          Star(id: "", names: ["下台二"]),
        ],
      ),
      Constellation(
        names: ["牧夫座"],
        stars: [
          Star(id: "", names: ["大角星"]),
          Star(id: "", names: ["右摄提一"]),
          Star(id: "", names: ["梗河一"]),
          Star(id: "", names: ["梗河三"]),
          Star(id: "", names: ["七公七"]),
          Star(id: "", names: ["七公增五"]),
          Star(id: "", names: ["招摇"]),
        ],
      ),
      Constellation(
        names: ["北冕座"],
        stars: [
          Star(id: "", names: ["贯索四"]),
        ],
      ),
      Constellation(
        names: ["狮子座"],
        stars: [
          Star(id: "", names: ["轩辕九"]),
          Star(id: "", names: ["轩辕十"]),
          Star(id: "", names: ["轩辕十一"]),
          Star(id: "", names: ["轩辕十二"]),
          Star(id: "", names: ["轩辕十三"]),
          Star(id: "", names: ["轩辕十四"]),
          Star(id: "", names: ["轩辕十五"]),
          Star(id: "", names: ["轩辕十六"]),
          Star(id: "", names: ["太微右垣五（西上相）"]),
          Star(id: "", names: ["太微右垣四（西次相）"]),
          Star(id: "", names: ["五帝座一"]),
        ],
      ),
      Constellation(
        names: ["室女座"],
        stars: [
          Star(id: "", names: ["太微右垣一（右执法）"]),
          Star(id: "", names: ["太微左垣一（左执法）"]),
          Star(id: "", names: ["太微左垣二（东上相）"]),
          Star(id: "", names: ["太微左垣三（东次相）"]),
          Star(id: "", names: ["太微左垣四（东次将）"]),
          Star(id: "", names: ["角宿一"]),
          Star(id: "", names: ["角宿二"]),
          Star(id: "", names: ["室女座τ"]),
          Star(id: "", names: ["室女座109"]),
          Star(id: "", names: ["室女座κ"]),
          Star(id: "", names: ["室女座ι"]),
          Star(id: "", names: ["室女座μ"]),
        ],
      ),
      Constellation(
        names: ["乌鸦座"],
        stars: [
          Star(id: "", names: ["轸宿一"]),
          Star(id: "", names: ["轸宿二"]),
          Star(id: "", names: ["轸宿三"]),
          Star(id: "", names: ["轸宿四"]),
          Star(id: "", names: ["右辖"]),
          Star(id: "", names: ["左辖"]),
        ],
      ),
      Constellation(
        names: ["半人马座"],
        stars: [
          Star(id: "", names: ["柱十一（角宿）"]),
          Star(id: "", names: ["骑官三"]),
          Star(id: "", names: ["衡一"]),
          Star(id: "", names: ["衡二"]),
          Star(id: "", names: ["衡三"]),
          Star(id: "", names: ["库楼三"]),
          Star(id: "", names: ["库楼二"]),
          Star(id: "", names: ["库楼一"]),
          Star(id: "", names: ["库楼七"]),
          Star(id: "", names: ["南门一"]),
          Star(id: "", names: ["南门二"]),
          Star(id: "", names: ["马腹一"]),
          Star(id: "", names: ["马尾三"]),
          Star(id: "", names: ["海山五"]),
        ],
      ),
      Constellation(
        names: ["南十字座"],
        stars: [
          Star(id: "", names: ["十字架一"]),
          Star(id: "", names: ["十字架二"]),
          Star(id: "", names: ["十字架三"]),
          Star(id: "", names: ["十字架四"]),
          Star(id: "", names: ["十字架增一"]),
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
          Star(id: "", names: ["天津一"]),
          Star(id: "", names: ["天津二"]),
          Star(id: "", names: ["天津四"]),
          Star(id: "", names: ["天津八"]),
          Star(id: "", names: ["天津九"]),
          Star(id: "", names: ["奚仲一"]),
          Star(id: "", names: ["奚仲二"]),
          Star(id: "", names: ["辇道增五"]),
          Star(id: "", names: ["辇道增七"]),
          Star(id: "", names: ["天鹅座ο1"]),
          Star(id: "", names: ["天鹅座ο2"]),
        ],
      ),
      Constellation(
        names: ["天琴座"],
        stars: [
          Star(id: "", names: ["织女星"]),
        ],
      ),
      Constellation(
        names: ["天鹰座"],
        stars: [
          Star(id: "", names: ["河鼓一"]),
          Star(id: "", names: ["河鼓二"]),
          Star(id: "", names: ["河鼓三"]),
          Star(id: "", names: ["天桴一"]),
          Star(id: "", names: ["天桴四"]),
          Star(id: "", names: ["右旗三"]),
          Star(id: "", names: ["天市左垣六（吴越）"]),
          Star(id: "", names: ["天弁七"]),
        ],
      ),
      Constellation(
        names: ["农夫与蛇"],
        stars: [
          Star(id: "", names: ["候"]),
          Star(id: "", names: ["天市左垣八（东海）"]),
          Star(id: "", names: ["天市左垣九（燕）"]),
          Star(id: "", names: ["天市左垣十（南海）"]),
          Star(id: "", names: ["天市左垣十一（宋）"]),
          Star(id: "", names: ["天市右垣十一（韩）"]),
          Star(id: "", names: ["天市右垣十（楚）"]),
          Star(id: "", names: ["天市右垣九（梁）"]),
          Star(id: "", names: ["天市右垣八（巴）"]),
          Star(id: "", names: ["天市右垣七（蜀）"]),
          Star(id: "", names: ["天市右垣六（秦）"]),
          Star(id: "", names: ["天市右垣五（周）"]),
          Star(id: "", names: ["天市右垣四（郑）"]),
        ],
      ),
      Constellation(
        names: ["天秤座"],
        stars: [
          Star(id: "", names: ["氐宿一"]),
          Star(id: "", names: ["氐宿三"]),
          Star(id: "", names: ["氐宿四"]),
          Star(id: "", names: ["折威七"]),
          Star(id: "", names: ["天辐一"]),
          Star(id: "", names: ["天辐二"]),
        ],
      ),
      Constellation(
        names: ["天蝎座"],
        stars: [
          Star(id: "", names: ["房宿一"]),
          Star(id: "", names: ["房宿二"]),
          Star(id: "", names: ["房宿三"]),
          Star(id: "", names: ["房宿四"]),
          Star(id: "", names: ["心宿一"]),
          Star(id: "", names: ["心宿二"]),
          Star(id: "", names: ["心宿三"]),
          Star(id: "", names: ["天蝎座μ1"]),
          Star(id: "", names: ["天蝎座μ2"]),
          Star(id: "", names: ["天蝎座ζ1"]),
          Star(id: "", names: ["天蝎座ζ2"]),
          Star(id: "", names: ["尾宿二"]),
          Star(id: "", names: ["尾宿四"]),
          Star(id: "", names: ["尾宿五"]),
          Star(id: "", names: ["尾宿六"]),
          Star(id: "", names: ["尾宿七"]),
          Star(id: "", names: ["尾宿八"]),
          Star(id: "", names: ["尾宿九"]),
        ],
      ),
      Constellation(
        names: ["人马座"],
        stars: [
          Star(id: "", names: ["斗宿一"]),
          Star(id: "", names: ["斗宿二"]),
          Star(id: "", names: ["斗宿三"]),
          Star(id: "", names: ["斗宿四"]),
          Star(id: "", names: ["斗宿五"]),
          Star(id: "", names: ["斗宿六"]),
          Star(id: "", names: ["箕宿一"]),
          Star(id: "", names: ["箕宿二"]),
          Star(id: "", names: ["箕宿三"]),
          Star(id: "", names: ["箕宿四"]),
          Star(id: "", names: ["建一"]),
          Star(id: "", names: ["建二"]),
          Star(id: "", names: ["建三"]),
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
          Star(id: "", names: ["造父一"]),
          Star(id: "", names: ["造父二"]),
          Star(id: "", names: ["造父四"]),
          Star(id: "", names: ["造父五"]),
          Star(id: "", names: ["天钩四"]),
          Star(id: "", names: ["天钩五"]),
          Star(id: "", names: ["天钩八"]),
          Star(id: "", names: ["上卫增一"]),
          Star(id: "", names: ["少卫增八"]),
        ],
      ),
      Constellation(
        names: ["仙后座"],
        stars: [
          Star(id: "", names: ["王良一"]),
          Star(id: "", names: ["王良四"]),
          Star(id: "", names: ["策"]),
          Star(id: "", names: ["阁道三"]),
          Star(id: "", names: ["阁道二"]),
          Star(id: "", names: ["王良二"]),
          Star(id: "", names: ["螣蛇十二"]),
        ],
      ),
      Constellation(
        names: ["秋季四边形"],
        stars: [
          Star(id: "", names: ["室宿一"]),
          Star(id: "", names: ["室宿二"]),
          Star(id: "", names: ["壁宿一"]),
          Star(id: "", names: ["壁宿二"]),
          Star(id: "", names: ["危宿三"]),
          Star(id: "", names: ["危宿一"]),
          Star(id: "", names: ["奎宿九"]),
          Star(id: "", names: ["天大将军一"]),
        ],
      ),
      Constellation(
        names: ["英仙座"],
        stars: [
          Star(id: "", names: ["天船一"]),
          Star(id: "", names: ["天船二"]),
          Star(id: "", names: ["天船三"]),
          Star(id: "", names: ["天船五"]),
          Star(id: "", names: ["卷舌一"]),
          Star(id: "", names: ["卷舌二"]),
          Star(id: "", names: ["卷舌三"]),
          Star(id: "", names: ["卷舌四"]),
          Star(id: "", names: ["卷舌五"]),
          Star(id: "", names: ["大陵四"]),
          Star(id: "", names: ["大陵五"]),
          Star(id: "", names: ["大陵六"]),
        ],
      ),
      Constellation(
        names: ["南鱼座"],
        stars: [
          Star(id: "", names: ["北落师门"]),
        ],
      ),
      Constellation(
        names: ["波江座"],
        stars: [
          Star(id: "", names: ["水委一"]),
        ],
      ),
    ],
  ),
];
