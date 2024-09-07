package com.digi.test.service;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import org.springframework.stereotype.Service;

import com.digi.test.dto.MarketVo;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

@Service
public class MarketService {

	public List<MarketVo> getMarkets() throws IOException {
		OkHttpClient client = new OkHttpClient();

		Request request = new Request.Builder().url("https://api.upbit.com/v1/market/all?isDetails=false").get()
				.addHeader("accept", "application/json").build();

		Response response = client.newCall(request).execute();
		String jsonResponse = response.body().string();

		Type marketListType = new TypeToken<List<MarketVo>>() {
		}.getType();
		return new Gson().fromJson(jsonResponse, marketListType);
	}
}