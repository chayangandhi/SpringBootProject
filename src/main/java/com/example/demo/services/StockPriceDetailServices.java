package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StockPriceDetailDao;

@Service
public class StockPriceDetailServices 
{
	@Autowired
	private StockPriceDetailDao stockprice;
	
	
}
