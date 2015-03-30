\version "2.19.17"
\header {
  title = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "西山苍苍"
  }
  subtitle = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "清华大学校歌"
  }
  subsubtitle = \markup {
    \override #'(font-name . "Microsoft YaHei Light" )
    "1923年审定接受为校歌"
  }
  composer = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "张丽真曲"
  }
  poet = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "汪鸾翔词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }

}
\score{
  \transpose c ees \relative c'
  {
    \key c \major \time 4/4 \tempo 4 = 88
    \repeat volta 3 {
      c4 c8( e) g4 g | a4 c8( a) g4 g | e4 e g8( e) c4 | a4 c8 d g2 | \break
      a4 a a8( c) g4 | e4 d e8( d) c4 | d4 g g8( fis) g4 | a4 a b8( a) g4 | \break
      c4. c8 a4 c | g4. a8 g2 | a4. a8 g4 e | d4 d8( e) g2 | \break
      c,4. c8 c4 e | d4 e8( d) c2 | a'4. a8 g4 e | d4 d8( e) c2 | \break
      c'4 c2 r4 | a4 a2 r4 | g4 g a g | d4 e g2 | \break
      c4 c2 r4 | a4 a2 r4 | g4 g a g | d e8( d) c2 |
    }
  }
  \addlyrics  {
    \set stanza = "(一)"
    西 山 苍 苍，  东 海 茫 茫，  吾 校 庄 严，  巍 然 中 央，
    东 西 文 化，  荟 萃 一 堂，  大 同 爰 跻，  祖 国 以 光。
    莘 莘 学 子 来 远 方，  莘 莘 学 子 来 远 方，
    春 风 化 雨 乐 未 央，  行 健 不 息 须 自 强。
    自 强，  自 强，  行 健 不 息 须 自 强！
    自 强，  自 强，  行 健 不 息 须 自 强！
  }
  \addlyrics  {
    \set stanza = "(二)"
    左 图 右 史，  邺 架 巍 巍，  致 知 穷 理，  学 古 探 微，
    新 旧 合 冶，  殊 途 同 归，  肴 核 仁 义，  闻 道 日 肥。
    服 膺 守 善 心 无 违，  服 膺 守 善 心 无 违，
    海 能 就 下 众 水 归，  学 问 笃 实 生 光 辉。
    光 辉，  光 辉，  学 问 笃 实 生 光 辉！
    光 辉，  光 辉，  学 问 笃 实 生 光 辉！
  }

  \addlyrics  {
    \set stanza = "(三)"
    器 识 为 先，  文 艺 其 从；  立 德 立 言，  无 问 西 东。
    孰 绍 介 是，  吾 校 之 功，  同 仁 一 视，  泱 泱 大 风。
    水 木 清 华 众 秀 钟，  水 木 清 华 众 秀 钟，
    万 悃 如 一 矢 以 忠，  赫 赫 吾 校 名 无 穷。
    无 穷，  无 穷，  赫 赫 吾 校 名 无 穷！
    无 穷，  无 穷，  赫 赫 吾 校 名 无 穷！
  }

  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override LyricText.self-alignment-X = #LEFT
      \override LyricText.font-size = #-1
      \override LyricText.font-name = #"Microsoft YaHei Light"
    }
  }
  \midi {}
}