scriptencoding utf-8

" 語尾補正ルールを使った語尾補正を行う
function! eblook#stem_ja#Stem(word)
  let stemmed = []
  for rule in g:eblook#stem_ja#rules
    if a:word =~ rule[0]
      call add(stemmed, substitute(a:word, rule[0], rule[1], ''))
    endif
  endfor
  return stemmed
endfunction

" 日本語用語尾補正ルールリスト (ebviewのdata/endinglist-ja.xmlから変換)
let g:eblook#stem_ja#rules = [
  \['た$', 'る'],
  \['て$', 'る'],
  \['かない$', 'く'],
  \['かなか$', 'く'],
  \['きます$', 'く'],
  \['きまし$', 'く'],
  \['きませんでした$', 'く'],
  \['きません$', 'く'],
  \['きましょう$', 'く'],
  \['けば$', 'く'],
  \['こう$', 'く'],
  \['いて$', 'く'],
  \['って$', 'く'],
  \['いた$', 'く'],
  \['った$', 'く'],
  \['かれ$', 'く'],
  \['かせ$', 'く'],
  \['け$', 'く'],
  \['さない$', 'す'],
  \['さなか$', 'す'],
  \['します$', 'す'],
  \['しまし$', 'す'],
  \['しませんでした$', 'す'],
  \['しません$', 'す'],
  \['しましょう$', 'す'],
  \['せば$', 'す'],
  \['そう$', 'す'],
  \['して$', 'す'],
  \['した$', 'す'],
  \['され$', 'す'],
  \['させ$', 'す'],
  \['せ$', 'す'],
  \['たない$', 'つ'],
  \['たなか$', 'つ'],
  \['ちます$', 'つ'],
  \['ちまし$', 'つ'],
  \['ちませんでした$', 'つ'],
  \['ちません$', 'つ'],
  \['ちましょう$', 'つ'],
  \['てば$', 'つ'],
  \['とう$', 'つ'],
  \['って$', 'つ'],
  \['った$', 'つ'],
  \['たれ$', 'つ'],
  \['たせ$', 'つ'],
  \['て$', 'つ'],
  \['なない$', 'ぬ'],
  \['ななか$', 'ぬ'],
  \['にます$', 'ぬ'],
  \['にまし$', 'ぬ'],
  \['にませんでした$', 'ぬ'],
  \['にません$', 'ぬ'],
  \['にましょう$', 'に'],
  \['ねば$', 'ぬ'],
  \['のう$', 'ぬ'],
  \['んで$', 'ぬ'],
  \['んだ$', 'ぬ'],
  \['なれ$', 'ぬ'],
  \['なせ$', 'ぬ'],
  \['ね$', 'ぬ'],
  \['まない$', 'む'],
  \['まなか$', 'む'],
  \['みます$', 'む'],
  \['みまし$', 'む'],
  \['みませんでした$', 'む'],
  \['みません$', 'む'],
  \['みましょう$', 'む'],
  \['めば$', 'む'],
  \['もう$', 'む'],
  \['んで$', 'む'],
  \['んだ$', 'む'],
  \['まれ$', 'む'],
  \['ませ$', 'む'],
  \['め$', 'む'],
  \['らない$', 'る'],
  \['らなか$', 'る'],
  \['ります$', 'る'],
  \['りまし$', 'る'],
  \['りませんでした$', 'る'],
  \['りません$', 'る'],
  \['りましょう$', 'る'],
  \['れば$', 'る'],
  \['ろう$', 'る'],
  \['って$', 'る'],
  \['った$', 'る'],
  \['られ$', 'る'],
  \['らせ$', 'る'],
  \['わない$', 'う'],
  \['わなか$', 'う'],
  \['います$', 'う'],
  \['いまし$', 'う'],
  \['いませんでした$', 'う'],
  \['いません$', 'う'],
  \['いましょう$', 'う'],
  \['えば$', 'う'],
  \['おう$', 'う'],
  \['って$', 'う'],
  \['った$', 'う'],
  \['われ$', 'う'],
  \['わせ$', 'う'],
  \['え$', 'う'],
  \['がない$', 'ぐ'],
  \['がなか$', 'ぐ'],
  \['ぎます$', 'ぐ'],
  \['ぎまし$', 'ぐ'],
  \['ぎませんでした$', 'ぐ'],
  \['ぎません$', 'ぐ'],
  \['ぎましょう$', 'ぐ'],
  \['げば$', 'ぐ'],
  \['ごう$', 'ぐ'],
  \['いで$', 'ぐ'],
  \['いだ$', 'ぐ'],
  \['がれ$', 'ぐ'],
  \['がせ$', 'ぐ'],
  \['げ$', 'ぐ'],
  \['ばない$', 'ぶ'],
  \['ばなか$', 'ぶ'],
  \['びます$', 'ぶ'],
  \['びました$', 'ぶ'],
  \['びませんでした$', 'ぶ'],
  \['びません$', 'ぶ'],
  \['びましょう$', 'ぶ'],
  \['べば$', 'ぶ'],
  \['ぼう$', 'ぶ'],
  \['んで$', 'ぶ'],
  \['んだ$', 'ぶ'],
  \['ばれ$', 'ぶ'],
  \['ばせ$', 'ぶ'],
  \['べ$', 'ぶ'],
  \['ない$', 'る'],
  \['なか$', 'る'],
  \['ます$', 'る'],
  \['ました$', 'る'],
  \['ませんでした$', 'る'],
  \['ません$', 'る'],
  \['ましょう$', 'る'],
  \['れば$', 'る'],
  \['よう$', 'る'],
  \['て$', 'る'],
  \['た$', 'る'],
  \['られ$', 'る'],
  \['させ$', 'る'],
  \['ろ$', 'る'],
  \['らま$', 'る'],
  \['くなか$', 'い'],
  \['くな$', 'い'],
  \['かった$', 'い'],
  \['く$', 'く'],
  \['く$', 'い'],
  \['しか$', 'しい'],
  \['けます$', 'ける'],
  \['けました$', 'ける'],
  \['けませんでし$', 'ける'],
  \['けません$', 'ける'],
  \['けましょう$', 'ける'],
  \['けない$', 'ける'],
  \['けなか$', 'ける'],
  \['けれ$', 'ける'],
  \['けよ$', 'ける'],
  \['けて$', 'ける'],
  \['けた$', 'ける'],
  \['けら$', 'ける'],
  \['けさ$', 'ける'],
  \['けろ$', 'ける'],
  \['げます$', 'げる'],
  \['げました$', 'げる'],
  \['げませんでし$', 'げる'],
  \['げません$', 'げる'],
  \['げましょう$', 'げる'],
  \['げない$', 'げる'],
  \['げなか$', 'げる'],
  \['げて$', 'げる'],
  \['げれ$', 'げる'],
  \['げよ$', 'げる'],
  \['げた$', 'げる'],
  \['げら$', 'げる'],
  \['げさ$', 'げる'],
  \['げろ$', 'げる'],
  \['べます$', 'べる'],
  \['べました$', 'べる'],
  \['べませんでし$', 'べる'],
  \['べません$', 'べる'],
  \['べましょう$', 'べる'],
  \['べない$', 'べる'],
  \['べなか$', 'べる'],
  \['べれ$', 'べる'],
  \['べよ$', 'べる'],
  \['べて$', 'べる'],
  \['べた$', 'べる'],
  \['べら$', 'べる'],
  \['べさ$', 'べる'],
  \['べろ$', 'べる'],
  \['めます$', 'める'],
  \['めました$', 'める'],
  \['めませんでし$', 'める'],
  \['めません$', 'める'],
  \['めましょう$', 'める'],
  \['めない$', 'める'],
  \['めなか$', 'める'],
  \['めれ$', 'める'],
  \['めよ$', 'める'],
  \['めて$', 'める'],
  \['めた$', 'める'],
  \['めら$', 'める'],
  \['めさ$', 'める'],
  \['めろ$', 'める'],
  \['えます$', 'える'],
  \['えました$', 'える'],
  \['えませんでし$', 'える'],
  \['えません$', 'える'],
  \['えましょう$', 'える'],
  \['えない$', 'える'],
  \['えなか$', 'える'],
  \['えれ$', 'える'],
  \['えよ$', 'える'],
  \['えて$', 'える'],
  \['えた$', 'える'],
  \['えら$', 'える'],
  \['えさ$', 'える'],
  \['えろ$', 'える'],
  \['れます$', 'れる'],
  \['れました$', 'れる'],
  \['れませんでし$', 'れる'],
  \['れません$', 'れる'],
  \['れましょう$', 'れる'],
  \['れない$', 'れる'],
  \['れなか$', 'れる'],
  \['れれ$', 'れる'],
  \['れよ$', 'れる'],
  \['れて$', 'れる'],
  \['れた$', 'れる'],
  \['れら$', 'れる'],
  \['れさ$', 'れる'],
  \['れろ$', 'れる'],
  \['れ$', 'る'],
  \['ねます$', 'ねる'],
  \['ねました$', 'ねる'],
  \['ねませんでし$', 'ねる'],
  \['ねません$', 'ねる'],
  \['ねましょう$', 'ねる'],
  \['ねない$', 'ねる'],
  \['ねなか$', 'ねる'],
  \['ねれ$', 'ねる'],
  \['ねよ$', 'ねる'],
  \['ねて$', 'ねる'],
  \['ねた$', 'ねる'],
  \['ねら$', 'ねる'],
  \['ねさ$', 'ねる'],
  \['ねろ$', 'ねる'],
  \['せます$', 'せる'],
  \['せました$', 'せる'],
  \['せませんでし$', 'せる'],
  \['せません$', 'せる'],
  \['せましょう$', 'せる'],
  \['せない$', 'せる'],
  \['せなか$', 'せる'],
  \['せれ$', 'せる'],
  \['せよ$', 'せる'],
  \['せて$', 'せる'],
  \['せた$', 'せる'],
  \['せら$', 'せる'],
  \['せさ$', 'せる'],
  \['せろ$', 'せる'],
  \['ぜます$', 'ぜる'],
  \['ぜました$', 'ぜる'],
  \['ぜませんでし$', 'ぜる'],
  \['ぜません$', 'ぜる'],
  \['ぜましょう$', 'ぜる'],
  \['ぜない$', 'ぜる'],
  \['ぜなか$', 'ぜる'],
  \['ぜれ$', 'ぜる'],
  \['ぜよ$', 'ぜる'],
  \['ぜて$', 'ぜる'],
  \['ぜた$', 'ぜる'],
  \['ぜら$', 'ぜる'],
  \['ぜさ$', 'ぜる'],
  \['ぜろ$', 'ぜる'],
  \['てます$', 'てる'],
  \['てました$', 'てる'],
  \['てませんでし$', 'てる'],
  \['てません$', 'てる'],
  \['てましょう$', 'てる'],
  \['てない$', 'てる'],
  \['てなか$', 'てる'],
  \['てれ$', 'てる'],
  \['てよ$', 'てる'],
  \['てて$', 'てる'],
  \['てた$', 'てる'],
  \['てら$', 'てる'],
  \['てさ$', 'てる'],
  \['てろ$', 'てる'],
  \['でます$', 'でる'],
  \['でました$', 'でる'],
  \['でませんでし$', 'でる'],
  \['でません$', 'でる'],
  \['でましょう$', 'でる'],
  \['でない$', 'でる'],
  \['でなか$', 'でる'],
  \['でれ$', 'でる'],
  \['でよ$', 'でる'],
  \['でて$', 'でる'],
  \['でた$', 'でる'],
  \['でら$', 'でる'],
  \['でさ$', 'でる'],
  \['でろ$', 'でる'],
\]
