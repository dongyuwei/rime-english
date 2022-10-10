-- https://github.com/shewer/rime-english/issues/2
-- load_module=require('tools/loadmodule')
-- load_module.load('english','english',"english.txt")

local english = require("english")()
english_processor = english.processor
english_segmentor = english.segmentor
english_translator = english.translator
english_filter = english.filter
english_filter0 = english.filter0

-- yuwei test a custom translator
function date_translator(input, seg)
    if (input == "date") then
       --- Candidate(type, start, end, text, comment)
       yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), " 日期"))
    end
 end