package com.example.mapper;

import com.example.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Dao接口
 * @author Administrator
 *
 */
@Mapper
@Repository
public interface NewsMapper {

    /**
     * 根据日期月份分组查询
     * @return
     */
     List<News> countList();

    /**
     * 分页查询新闻
     * @return
     */
     List<News> list(Map<String, Object> map);

    /**
     * 获取总记录数
     * @param map
     * @return
     */
     Long getTotal(Map<String, Object> map);

    /**
     * 通过Id查找实体
     * @param id
     * @return
     */
     News getById(Integer id);

    /**
     * 更新新闻信息
     * @param news
     * @return
     */
     Integer update(News news);

    /**
     * 获取上一个新闻
     * @param id
     * @return
     */
     News getLastNews(Integer id);

    /**
     * 获取下一条新闻
     * @param id
     * @return
     */
     News getNextNews(Integer id);

    /**
     * 添加新闻信息
     * @param news
     * @return
     */
     Integer add(News news);

    /**
     * 删除新闻信息
     * @param id
     * @return
     */
     Integer delete(Integer id);

    /**
     * 查询指定的新闻类别下的新闻数量
     * @param typeId
     * @return
     */
     Integer getNewsByTypeId(Integer typeId);


}
