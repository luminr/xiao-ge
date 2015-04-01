\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "SimHei")
    "浙江大学校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "SimSun" )
    "1938年"
  }
  composer = \markup {
    \override #'(font-name . "SimSun")
    "应尚能曲"
  }
  poet = \markup {
    \override #'(font-name . "SimSun")
    "马一浮词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c d \relative c'{
      \key c \major \time 3/4 \tempo 4 = 112
      e4 e e | g2 c,4 | d2 f4 | e2 g4 | a4( g) f | a2 r4 | a4 b a | g2 g4 |
      c2 b8( a) | g4.( f8) e4 | a4 d, e | d2 r4 | e4 e a | a4.( g8) g4 | g4 g c |  b2 b8 c8 |
      d8( c) b( a) g4 | d4 a' b, | c2.\fermata \bar "||"
      e4 e e | g2 c,4 | d2 f4 | e2. | e4 e e | a2 f8 f | d2 c4 | d2 r4 | a'4 a b | c2 b8( a) | g2 f4 | e2 c4 | a'8 a a4 d, | g8 g g4 c, | f8 f f4 g | e8 d d2 | c4( d) e | g4 f e8 f | g4 a b8( c) | d8( c) b( a) g4 | d4 a' b, | c2 r4 \bar "||"  e4 e e | g2 c,4 | d2 f4 | e2 g4 |  g2 g4 | a2 b4 | c4( b) a | g2 g4 | c2 b8( a) | g2 e4 | a4( d,) e | d2 d4 | e4.( d8) e4 | f2 e4 | f4. e8 f4 | g2 f4 | g4.( f8) g4 | a2 g4 | a4.( g8) a4 | b2 r4 | d8( c) b( a) g( f) | e2 r4 | d4 a'\fermata b, | c2\fermata r4
      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)"
      大 不 自 多 海 纳 江 河      惟 学 无 际 际 于 天 地      形 上 谓 道 兮 形 下 谓 器      礼 主 别 异 兮 乐 主 和 同      知 其 不 二 兮 尔 听 斯 聪  \set stanza = "(二)"      国 有 成 均 在 浙 之 滨      昔 言 求 是 实 启 尔 求 真      习 坎 示 教 始 见 经 纶      无 曰 己 是 无 曰 遂 真      靡 革 匪 因 靡 故 匪 新      何 以 新 之 开 物 前 民      嗟 尔 髦 士 尚 其 有 闻 \set stanza = "(三)"      念 哉 典 学 思 睿 观 通      有 文 有 质 有 农 有 工      兼 总 条 贯 知 至 知 终      成 章 乃 达 若 金 之 在 熔      尚 亨 于 野 无 吝 于 宗      树 我 邦 国 天 下 来 同
    }
  }
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override LyricText.self-alignment-X = #LEFT
      \override LyricText.font-size = #-1
      \override LyricText.font-name = #"SimSun"
    }
  }
  \midi {}
}