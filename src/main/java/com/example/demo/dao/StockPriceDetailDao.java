package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.StockPriceDetail;

public interface StockPriceDetailDao extends JpaRepository<StockPriceDetail,Integer> {

}
