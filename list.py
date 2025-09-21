s = "808/ 808bd/ 808cy/ 808hc/ 808ht/ 808lc/ 808lt/ 808mc/ 808mt/ 808oh/ 808sd/ 909/ ab/ ade/ ades2/ ades3/ ades4/ alex/ alphabet/ amencutup/ armora/ arp/ arpy/ auto/ baa/ baa2/ bass/ bass0/ bass1/ bass2/ bass3/ bassdm/ bassfoo/ battles/ bd/ bend/ bev/ bin/ birds/ birds3/ bleep/ blip/ blue/ bottle/ breaks125/ breaks152/ breaks157/ breaks165/ breath/ bubble/ can/ casio/ cb/ cc/ chin/ circus/ clak/ click/ clubkick/ co/ coins/ control/ cosmicg/ cp/ cr/ crow/ d/ db/ diphone/ diphone2/ dist/ dork2/ dorkbot/ dr/ dr2/ dr55/ dr_few/ drum/ drumtraks/ e/ east/ electro1/ em2/ erk/ f/ feel/ feelfx/ fest/ fire/ flick/ fm/ foo/ future/ gab/ gabba/ gabbaloud/ gabbalouder/ glasstap/ glitch/ glitch2/ gretsch/ gtr/ h/ hand/ hardcore/ hardkick/ haw/ hc/ hh/ hh27/ hit/ hmm/ ho/ hoover/ house/ ht/ if/ ifdrums/ incoming/ industrial/ insect/ invaders/ jazz/ jungbass/ jungle/ juno/ jvbass/ kicklinn/ koy/ kurt/ latibro/ led/ less/ lighter/ linnhats/ lt/ made/ made2/ mash/ mash2/ metal/ miniyeah/ monsterb/ moog/ mouth/ mp3/ msg/ mt/ mute/ newnotes/ noise/ noise2/ notes/ num/ numbers/ oc/ odx/ off/ outdoor/ pad/ padlong/ pebbles/ perc/ peri/ pluck/ popkick/ print/ proc/ procshort/ psr/ rave/ rave2/ ravemono/ realclaps/ reverbkick/ rm/ rs/ sax/ sd/ seawolf/ sequential/ sf/ sheffield/ short/ sid/ simplesine/ sitar/ sn/ space/ speakspell/ speech/ speechless/ speedupdown/ stab/ stomp/ subroc3d/ sugar/ sundance/ tabla/ tabla2/ tablex/ tacscan/ tech/ techno/ tink/ tok/ toys/ trump/ ul/ ulgab/ uxay/ v/ voodoo/ wind/ wobble/ world/ xmas/ yeah/"
a = [i.replace('/', '') for i in s.split()]
print(a)

b = ['`#`', '808', '808bd', '808cy', '808hc', '808ht', '808lc', '808lt', '808mc', '808mt', '808oh', '808sd', '909', ' ', '`A`', 'ab', 'ade', 'ades2', 'ades3', 'ades4', 'alex', 'alphabet', 'amencutup', 'armora', 'arp', 'arpy', 'auto', ' ', '`B`', 'baa', 'baa2', 'bass', 'bass0', 'bass1', 'bass2', 'bass3', 'bassdm', 'bassfoo', 'battles', 'bd', 'bend', 'bev', 'bin', 'birds', 'birds3', 'bleep', 'blip', 'blue', 'bottle', 'breaks125', 'breaks152', 'breaks157', 'breaks165', 'breath', 'bubble', ' ','`C`', 'can', 'casio', 'cb', 'cc', 'chin', 'circus', 'clak', 'click', 'clubkick', 'co', 'coins', 'control', 'cosmicg', 'cp', 'cr', 'crow', ' ','`D`', 'd', 'db', 'diphone', 'diphone2', 'dist', 'dork2', 'dorkbot', 'dr', 'dr2', 'dr55', 'dr_few', 'drum', 'drumtraks', ' ','`E`', 'e', 'east', 'electro1', 'em2', 'erk', ' ','`F`', 'f', 'feel', 'feelfx', 'fest', 'fire', 'flick', 'fm', 'foo', 'future', ' ','`G`', 'gab', 'gabba', 'gabbaloud', 'gabbalouder', 'glasstap', 'glitch', 'glitch2', 'gretsch', 'gtr', ' ','`H`', 'h', 'hand', 'hardcore', 'hardkick', 'haw', 'hc', 'hh', 'hh27', 'hit', 'hmm', 'ho', 'hoover', 'house', 'ht', ' ','`I`', 'if', 'ifdrums', 'incoming', 'industrial', 'insect', 'invaders', ' ','`J`', 'jazz', 'jungbass', 'jungle', 'juno', 'jvbass', ' ','`K`', 'kicklinn', 'koy', 'kurt', ' ','`L`', 'latibro', 'led', 'less', 'lighter', 'linnhats', 'lt', ' ','`M`', 'made', 'made2', 'mash', 'mash2', 'metal', 'miniyeah', 'monsterb', 'moog', 'mouth', 'mp3', 'msg', 'mt', 'mute', ' ','`N`', 'newnotes', 'noise', 'noise2', 'notes', 'num', 'numbers', ' ','`O`', 'oc', 'odx', 'off', 'outdoor', ' ','`P`', 'pad', 'padlong', 'pebbles', 'perc', 'peri', 'pluck', 'popkick', 'print', 'proc', 'procshort', 'psr', ' ','`R`', 'rave', 'rave2', 'ravemono', 'realclaps', 'reverbkick', 'rm', 'rs', ' ','`S`', 'sax', 'sd', 'seawolf', 'sequential', 'sf', 'sheffield', 'short', 'sid', 'simplesine', 'sitar', 'sn', 'space', 'speakspell', 'speech', 'speechless', 'speedupdown', 'stab', 'stomp', 'subroc3d', 'sugar', 'sundance', ' ','`T`', 'tabla', 'tabla2', 'tablex', 'tacscan', 'tech', 'techno', 'tink', 'tok', 'toys', 'trump', ' ','`U`', 'ul', 'ulgab', 'uxay', ' ','`V`', 'v', 'voodoo', ' ','`W`', 'wind', 'wobble', 'world', ' ','`X`','xmas', ' ','`Y`','yeah']
print(len(b))

def to_markdown_table(lst, cols):
    rows = len(lst) // cols
    table = []
    for r in range(rows):
        row = []
        for c in range(cols):
            idx = r + c * rows
            if idx < len(lst):
                row.append(lst[idx])
            else:
                row.append("")
        table.append(row)
    # Markdown formatting
    md = "| " + " | ".join([""] * cols) + " |\n"
    md += "|---" * cols + "|\n"
    for row in table:
        md += "| " + " | ".join(str(x) for x in row) + " |\n"
    return md

print(to_markdown_table(b, 3))
