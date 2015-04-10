\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "溫州師範學校校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1945年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "劉質平作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "王季思作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}

verse = \lyricmode { 大 哉 師 道 天 下 尊， 承 往 哲 兮 啟 後 人。  厚 培 德 本， 深 濬 智 源， 學 成 致 用 教 化 諄。  光 大 國 族 兮， 造 福 人 群。  東 海 水， 雁 盪 山， 我 溫 師 精 神， 浩 浩 宕 宕。 }
\score{
  {
    \transpose c f \relative c' \new ChoirStaff
    <<
      {
        \key c \major \time 4/4
        c4. c8 e4 e | g4. g8 g2 | a4. a8 a4 g | f4 e d2 |
        c4. c8 d4 d | e4. e8 d4 d | g4. g8 g4 f | e4 d c2 |
        g'2 g | a4. a8 g2 | e2 d | c4.( d8) e2 |
        g4. g8 g2 | d4. d8 d2 | e2 d4 e | g4.( a8) g2 |
        e4 d2 e4 | c2. r4 |
        \bar "|."
      }
      \addlyrics \verse
      {
        \key c \major
        c4. c8 c4 c | e4. e8 e2 | c4. c8 c4 c | d4 c b2 |
        c4. c8 b4 b | c4. c8 b4 b | e4. e8 e4 d | c4 b c2 |
        e2 e | c4. c8 e2 | c2 b | a4.( b8) c2 |
        c4. c8 c2 | b4. b8 b2 | c2 b4 c | e4.( f8) e2 |
        c4 b2 b4 | c2. r4 |
      }
      \addlyrics \verse
      {
        \key c \major
        c4. c8 g4 g | c4. c8 c2 | f,4. f8 f4 f | g4 g g2 |
        c4. c8 g4 g | c4. c8 g4 g | c4. c8 c4 c | g4 g c2 |
        c2 c | f,4. f8 c'2 | g2 g | c4.( c8) c2 |
        e4. e8 e2 | g4. g8 g2 | g,2 g4 g | c4.( c8) c2 |
        g4 g2 g4 | c2. r4 |
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
  \midi { \tempo 4 = 100 }
}