assert = require('assert')
itParam = require('mocha-param')

lesiwka = require('../dist/lesiwka.node.js')

data = [
  ['акула', 'akula'],
  ['бабак', 'babak'],
  ['вовк', 'vowk'],
  ['галка', 'halka'],
  ['ґава', 'gava'],
  ['дуб', 'dub'],
  ['ему', 'emu'],
  ['єнот', 'jenot'],
  ['майбутнє', 'majbutńe'],
  ['жаба', 'žaba'],
  ['зубр', 'zubr'],
  ['калина', 'kalyna'],
  ['индик', 'yndyk'],
  ['інший', 'inšyj'],
  ['ластівка', 'lastiwka'],
  ['їжак', 'jižak'],
  ['йорж', 'jorž'],
  ['качка', 'kačka'],
  ['лелека', 'leleka'],
  ['муха', 'muxa'],
  ['нетопир', 'netopyr'],
  ['орел', 'orel'],
  ['павич', 'pavyč'],
  ['равлик', 'rawlyk'],
  ['собака', 'sobaka'],
  ['тигр', 'tyhr'],
  ['удав', 'udaw'],
  ['фретка', 'fretka'],
  ['ховрах', 'xowrax'],
  ['цесарка', 'cesarka'],
  ['чайка', 'čajka'],
  ['шпак', 'špak'],
  ['щур', 'ščur'],
  ['олень', 'oleń'],
  ['юнак', 'junak'],
  ['гадюка', 'had́uka'],
  ['яблуко', 'jabluko'],
  ['дятел', 'd́atel'],
  ['джміль', 'đmiĺ'],
  ['ґедзь', 'geƶ́'],
  ['гаївка', 'hajiwka'],
  ["об'їзд", 'objizd'],
  ['праістота', 'praistota'],
  ['знаю', 'znaju'],
  ["сім'я", 'simja'],
  ['бджілка', 'bđilka'],
  ['дзвоник', 'ƶvonyk'],
  ['підживити', 'pidžyvyty'],
  ['відзначити', 'vidznačyty'],
  ['абе́тка', 'abétka'],
  ['Яблуко', 'Jabluko'],
  ['Я, РОБОТ', 'JA, ROBOT'],
  ['Над-Я', 'Nad-Ja'],
  ['ПП', 'PP'],
  ['МакКуін', 'MakKuin'],
  ['Це \u2019риба\u2019.', 'Ce \u2019ryba\u2019.'],
  ["\u2019пір\u2019я\u2019", '\u2019pirja\u2019'],
  ["'м'яч'", "'mjač'"],
  ["'", "'"],
  ['сыр', 'сыр'],
  ['Є ', 'Je '],
  ['Ь', ''],
  ['йі', 'ji'],
  ["передзвонити", "pereƶvonyty"],
  ["передзимовий", "peredzymovyj"],
  ["передз'їздівський", "peredzjizdiwśkyj"],
  ["Укрінформ", "Ukrinform"],
  ["наївся", "najiwśa"],
  ["з'їв", "zjiw"],
  ["нї", "ńi"],
  ["вйо", "wjo"],
  ["братів-українців", "brativ-ukrajinciw"],
  ["в Україну", "v Ukrajinu"],
  ["удав, акула", "udaw, akula"],
  ["удав акулі", "udav akuli"],
  ["удав бабакові", "udaw babakovi"],
  ["впав — упав", "wpaw — upaw"],
  ["ЮНІСЕФ", "JuNISEF"],
  ["ЦДЮТ", "CDJuT"],
  ["ВВР", "VVR"],
  ["ВВП", "VWP"],
  ["бульв. Шевченка", "buĺv. Šewčenka"],
  ["Див. деталі", "Dyv. detali"],
  ["в.о.", "v.o."],
  ["в «Атласі»", "v «Atlasi»"],
  ["в  Європі", "v  Jewropi"],
  ["в'язниця", "wjaznyća"],
]

describe 'encode', ->
  itParam '"${value[0]}" should be converted to "${value[1]}"', data, (value) ->
    assert.equal lesiwka.encode(value[0]), value[1]
