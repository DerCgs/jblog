package jblog.guohai.org.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

public interface BlogSearchDao {
    @Insert("<script>insert into jblog_search_key(post_code,post_key) values " +
            "<foreach collection='words' item='item' index='index' separator=','>" +
            " (#{postCode},#{item})" +
            "</foreach></script>")
    int insertSearchKey(@Param("postCode") Integer postCode, @Param("words") Set<String> words);
}
