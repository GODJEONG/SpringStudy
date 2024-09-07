package com.digi.test;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.digi.test.dto.MarketVo;
import com.digi.test.service.MarketService;
import com.digi.test.service.UpbitService;

@RestController
@RequestMapping("/api")
public class MarketController {
// localhost:8080/api/markets

	@Autowired
    private MarketService marketService;
	
	@Autowired
    private UpbitService  upbitService;
	
	
    @GetMapping("/markets")
    public List<MarketVo> getMarkets(@PathVariable("name")String name, @PathVariable("pw") String pw) throws IOException {
    	System.out.println("name : " + name);
    	System.out.println("pw : " + pw);
        return marketService.getMarkets();
    }
    
    @GetMapping("/test")
    public String hello() {
    	return "hello!";
    }
    
    
//    @GetMapping("/ticker")
//    public Map<String, Object> getTicker(@RequestParam String market) {
//        return upbitService.getTicker(market);
//    }
    
    
    
    
    
}