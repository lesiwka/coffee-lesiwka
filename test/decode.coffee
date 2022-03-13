assert = require('assert')
itParam = require('mocha-param')

lesivka = require('../dist/lesivka.node.js')

data = [
  ['akula', 'акула'],
  ['babak', 'бабак'],
  ['vowk', 'вовк'],
  ['halka', 'галка'],
  ['gava', 'ґава'],
  ['dub', 'дуб'],
  ['emu', 'ему'],
  ['jenot', 'єнот'],
  ['majbutńe', 'майбутнє'],
  ['žaba', 'жаба'],
  ['zubr', 'зубр'],
  ['kalyna', 'калина'],
  ['inšyj', 'інший'],
  ['yndyk', 'индик'],
  ['lastiwka', 'ластівка'],
  ['jižak', 'їжак'],
  ['jorž', 'йорж'],
  ['kačka', 'качка'],
  ['leleka', 'лелека'],
  ['muxa', 'муха'],
  ['netopyr', 'нетопир'],
  ['orel', 'орел'],
  ['pavyč', 'павич'],
  ['ravlyk', 'равлик'],
  ['sobaka', 'собака'],
  ['tyhr', 'тигр'],
  ['udaw', 'удав'],
  ['fretka', 'фретка'],
  ['xowrax', 'ховрах'],
  ['cesarka', 'цесарка'],
  ['čajka', 'чайка'],
  ['špak', 'шпак'],
  ['ščur', 'щур'],
  ['oleń', 'олень'],
  ['junak', 'юнак'],
  ['had́uka', 'гадюка'],
  ['jabluko', 'яблуко'],
  ['d́atel', 'дятел'],
  ['đmiĺ', 'джміль'],
  ['geƶ́', 'ґедзь'],
  ['hajiwka', 'гаївка'],
  ['objizd', "об'їзд"],
  ['praistota', 'праістота'],
  ['znaju', 'знаю'],
  ['simja', "сім'я"],
  ['bđilka', 'бджілка'],
  ['ƶvonyk', 'дзвоник'],
  ['pidžyvyty', 'підживити'],
  ['vidznačyty', 'відзначити'],
  ['c\u030caj', 'чай'],
  ['kuṕura', 'купюра'],
  ['Nad-Ja', 'Над-Я'],
  ['MakKuin', 'МакКуін'],
  ['Mjač', "М'яч"],
  ['vjo', 'вйо'],
  ['poduščanyj', 'подушчаний'],
  ['Melaščyn', 'Мелашчин'],
  ['ńi', 'нї'],
  ['jy', 'ї'],
]

describe 'decode', ->
  itParam '"${value[0]}" should be converted to "${value[1]}"', data, (value) ->
    assert.equal lesivka.decode(value[0]), value[1]
