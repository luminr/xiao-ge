\version "2.19.17"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "培英中學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1879年"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c aes \new ChoirStaff <<
      \new Staff \relative c' {
        \key c \major \time 3/4 \tempo "Moderato" \dynamicUp \autoBeamOff
        <<
          {
            c2 b8 a | g4 g g | a4 c a | a4 g r | e'2\p\< d8 d |
            c2\> b8  b\! | a4 g fis | g2. | c2^\markup { \dynamic mf \italic dolce } b8  a | g4 g g | f'4 f e |
            e4 d r | g2\f e8 f8 | g4 s4 c,4 | f4 e d | c2. |
            \bar "|."
          }
          {
            e,2 e8  e | e4 e e | f4 f f | f4 e r | g2 g8  g |
            fis2 g8  g | f4 d d | d2. | e2 e8  e | e4 e e | g4 g g |
            g4 g r | g2 g8 g8 | g4 << { b4 } \\ { g8[( f]) } >> e4 | a4 g f | e2. |
          }
          \new NullVoice = "aligner" {
            e,2 e8  e | e4 e e | f4 f f | f4 e r | g2 g8  g |
            fis2 g8  g | f4 d d | d2. | e2 e8  e | e4 e e | g4 g g |
            g4 g r | g2 g8 g8 | g4 b4 e4 | a4 g f | e2. |
          }
        >>
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(一)"
        我 愛 我 培 英 學 校 校 地 清 新 東 臨 蓬 館 西 接 煙 雨 名 津 書 聲 琴 韻 花 香 鳥 語 總 宜 人 藏 修 游 息 咸 沾 教 澤 如 春
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(二)"
        我 愛 我 培 英 學 校 校 舍 雲 連 巍 峨 橫 宇 聲 教 一 脈 相 傳 且 細 看 環 林 榮 映 圓 海 回 泉 胸 懷 光 霽 樂 哉 風 月 無 邊
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(三)"
        我 愛 我 培 英 學 校 校 友 熙 攘 一 爐 共 冶 莫 邪 兮 與 干 將 大 好 聲 明 洋 溢 乎 中 外 四 方 願 我 校 友 奮 發 為 母 校 光
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(四)"
        我 愛 我 培 英 學 校 校 旗 輝 煌 色 分 白 綠 臨 風 招 展 飛 揚 萬 眾 同 瞻 徽 儀 爭 榮 齊 日 月 有 口 共 贊 朴 游 百 世 流 芳
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(五)"
        我 愛 我 培 英 學 校 優 良 傳 統 白 綠 健 兒 一 家 親 情 誼 重 信 望 與 愛 陶 鑄 英 才 為 國 用 鷹 揚 長 空 廣 沐 化 雨 春 風
      }
      \new Staff \relative c{
        \key c \major \clef bass \autoBeamOff
        <<
          {
            g2 g8 c | c4 c c | c4 a c | c4 c r | << c2 \\ c2 >> d8  d |
            d2 d8  d | c4 b a | b2. | g2 g8  c | c4 c c | b4 b c |
            c4 b r | e2 << { c8  d8 } \\ { c8  c8 } >>  | e4 d4 c4 | c4 c b | c2. |
          }
          {
            c,2 c8  c | c4 c c | f4 f f | c4 c r | s2 b'8 b |
            a2 g8  g | c,4 d d | g2. | c,2 c8 c | c4 c e | d4 d c |
            g'4 g r | c2 s4 | c4 g g | f4 g g | c,2. |
          }
        >>
      }
    >>
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi {
    \tempo 4 = 100
    \context {
      \Score
      midiMinimumVolume = #1
      midiMaximumVolume = #1
    }
  }
}