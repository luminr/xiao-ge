\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "浙江大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1938年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "應尚能 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "馬一浮 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c d \relative c'{
      \key c \major \time 3/4
      e4 e e | g2 c,4 | d2 f4 | e2 g4 | a4( g) f | a2 r4 | a4 b a | g2 g4 |
      c2 b8( a) | g4.( f8) e4 | a4 d, e | d2 r4 | e4 e a | a4.( g8) g4 | g4 g c |  b2 b8 c8 |
      d8( c) b( a) g4 | d4 a' b, | c2.\fermata \bar "||"
      e4 e e | g2 c,4 | d2 f4 | e2. | e4 e e | a2 f8 f | d2 c4 | d2 r4 | a'4 a b | c2 b8( a) | g2 f4 | e2 c4 | a'8 a a4 d, | g8 g g4 c, | f8 f f4 g | e8 d d2 | c4( d) e | g4 f e8 f | g4 a b8( c) | d8( c) b( a) g4 | d4 a' b, | c2 r4 \bar "||"  e4 e e | g2 c,4 | d2 f4 | e2 g4 |  g2 g4 | a2 b4 | c4( b) a | g2 g4 | c2 b8( a) | g2 e4 | a4( d,) e | d2 d4 | e4.( d8) e4 | f2 e4 | f4. e8 f4 | g2 f4 | g4.( f8) g4 | a2 g4 | a4.( g8) a4 | b2 r4 | d8( c) b( a) g( f) | e2 r4 | d4 a'\fermata b, | c2\fermata r4
      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)"
      大 不 自 多 海 納 江 河
      惟 學 無 際 際 於 天 地
      形 上 謂 道 兮 形 下 謂 器
      禮 主 別 異 兮 樂 主 和 同
      知 其 不 二 兮 爾 聽 斯 聰
      \set stanza = "(二)"
      國 有 成 均 在 浙 之 濱
      昔 言 求 是 實 啟 爾 求 真
      習 坎 示 教 始 見 經 綸
      無 曰 己 是 無 曰 遂 真
      靡 革 匪 因 靡 故 匪 新
      何 以 新 之 開 物 前 民
      嗟 爾 髦 士 尚 其 有 聞
      \set stanza = "(三)"
      念 哉 典 學 思 睿 觀 通
      有 文 有 質 有 農 有 工
      兼 總 條 貫 知 至 知 終
      成 章 乃 達 若 金 之 在 熔
      尚 亨 於 野 無 吝 於 宗
      樹 我 邦 國 天 下 來 同
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 112 }
}