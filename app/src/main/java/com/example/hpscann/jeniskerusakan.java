package com.example.hpscann;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Switch;
import android.widget.TextView;

public class jeniskerusakan extends AppCompatActivity {
    TextView p1,p2,p3,g1,g2,g3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_jeniskerusakan);

        p1 = findViewById(R.id.k1);
        p2 = findViewById(R.id.k2);
        p3 = findViewById(R.id.k3);
        g1 = findViewById(R.id.g1);
        g2 = findViewById(R.id.g2);
        g3 = findViewById(R.id.g3);

        p1.setText("Baterai");
        g1.setText("1. HP tiba tiba mati padahal isi baterai masih ada\n" +
                "2. HP tidak penuh walaupun sudah diisi berjam jam\n" +
                "3. Penggunaan baterai boros\n" +
                "4. Tidak bisa dicarger");
        p2.setText("Memory");
        g2.setText("1. Data tiba tiba hilang\n" +
                "2. Tidak bisa diakses pada komputer atau laptop\n" +
                "3. Tidak dapat membuka gallery pada HP\n" +
                "4. HP bisa mengirim file tertentu saja\n" +
                "5. HP hanya bisa menerima file tertentu saja");
        p3.setText("Keypad");
        g3.setText("1. Penekanan pada huruf menjadi acak\n" +
                "2. Tulisan bergaris atau berantakan \n" +
                "3. Sebagian tombol tidak berfungss\n" +
                "4. Sebagian tombol sulit ditekan\n" +
                "5. Tidak ada reaksi ketika ditekan");

    }
}