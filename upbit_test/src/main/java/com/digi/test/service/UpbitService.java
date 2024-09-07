package com.digi.test.service;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import org.springframework.stereotype.Service;

import com.digi.test.dto.Candle;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

@Service
public class UpbitService {

	private final OkHttpClient client = new OkHttpClient();
	private final Gson gson = new Gson();

	public List<Candle> getDailyCandles(String market) {
		String url = "https://api.upbit.com/v1/candles/days?market=" + market + "&count=30";

		Request request = new Request.Builder().url(url).get().addHeader("accept", "application/json").build();

		try (Response response = client.newCall(request).execute()) {
			if (response.isSuccessful() && response.body() != null) {
				String jsonData = response.body().string();
				Type listType = new TypeToken<List<Candle>>() {
				}.getType();
				return gson.fromJson(jsonData, listType);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}