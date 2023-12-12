from pydub import AudioSegment

src = "/Users/ishi/Documents/研究_技科大/Youtube_mp3/月ノ美兎_幽体離脱.mp3"
dst = "/Users/ishi/Documents/研究_技科大/Youtube_mp3/月ノ美兎_幽体離脱.wav"

audSeg = AudioSegment.from_mp3(src)
audSeg.export(dst, format="wav")