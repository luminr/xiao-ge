\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "中山大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1926年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "李耀輝 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "郭沫若 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c c \relative c'{
      \key c \major \time 4/4

      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)" %删除标点符号
      浩 然 正 氣 此 長 存， 霹 靂 一 聲 天 下 驚， 叱 吒 風 雲 卷 大 陸， 倡 導 三 民 主 義 首 民 族， 此 乃 吾 校 之 衣 缽， 此 乃 吾 校 之 衣 缽。
    }
    \addlyrics {
      \set stanza = "(二)"
      白 日 青 天 滿 地 紅， 新 興 文 化 作 先 鋒， 匪 行 之 艱 知 之 艱， 倡 導 三 民 主 義 重 民 權， 此 乃 吾 校 之 真 銓， 此 乃 吾 校 之 真 銓。
    }
    \addlyrics {
      \set stanza = "(三)"
      中 原 之 中 中 山 大， 扶 植 桃 李 滿 天 下， 博 審 慎 明 還 篤 行， 倡 導 三 民 主 義 濟 民 生， 此 乃 吾 校 之 光 榮， 此 乃 吾 校 之 光 榮。
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 100 }
}