package jblog.guohai.org.util;

import com.huaban.analysis.jieba.JiebaSegmenter;

import java.util.Set;
import java.util.stream.Collectors;

public class SplitWord {
    private static JiebaSegmenter segmenter = new JiebaSegmenter();

    public static Set<String> split(String content) {
        String tmpRegex = "[，|,|`|。|？|“|”|~|!|@|#|$|%|^|&|*|(|)|`|、|，|<|>|）|（|(\\n+)|\\t+|-]";
        String delStr = content.replaceAll(tmpRegex, " ");
        return segmenter.process(delStr, JiebaSegmenter.SegMode.INDEX).stream().map(x -> x.word).collect(Collectors.toSet());
    }
}
