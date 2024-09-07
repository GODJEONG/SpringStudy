package com.digi.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.digi.test.dto.Candle;
import com.digi.test.service.UpbitService;

@Controller
public class UpbitController {

    @Autowired
    private UpbitService upbitService;

    @GetMapping("/candles")
    public String getCandles(Model model) {
        List<Candle> candles = upbitService.getDailyCandles("KRW-BTC");
        model.addAttribute("candles", candles);
        return "candles"; // JSP 파일 이름 (candles.jsp)
    }
}
