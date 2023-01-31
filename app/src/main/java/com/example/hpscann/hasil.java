package com.example.hpscann;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

public class hasil extends AppCompatActivity {
    TextView hasil,penyakit,penanganan;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hasil);
        Intent i = getIntent();

        hasil=findViewById(R.id.hasil);
        penyakit=findViewById(R.id.hasil2);
        penanganan=findViewById(R.id.hasil3);
        hasil.setText("Hasil : "+i.getExtras().getString("hasil")+"%");
        penyakit.setText("Kerusakan : "+i.getExtras().getString("penyakit"));
        penanganan.setText("Solusi : "+i.getExtras().getString("penanganan"));
        Button btn=findViewById(R.id.back1);
        btn.setOnClickListener(v -> startActivity(new Intent(hasil.this, MainActivity.class)));
    }
}