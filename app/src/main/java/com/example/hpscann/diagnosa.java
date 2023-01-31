package com.example.hpscann;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class diagnosa extends AppCompatActivity {
    Button btnya,btnno, sub;
    Bundle bundle = new Bundle();
    String a1,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15;
    private static String URL_REGIST = "http://192.168.1.7/sp_db/bayes.php";
    StringBuffer ok;
    TextView p;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_diagnosa);

        a1="1";
        sub= findViewById(R.id.Submit_btn);
        p=findViewById(R.id.pe_btn_1);
        btnno= findViewById(R.id.tidak);
        btnya= findViewById(R.id.iya);

        p.setText("HP tiba tiba mati padahal isi baterai masih ada");
        btnya.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Btnya();
            }
        });
        sub.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Regist();
            }
        });
        btnno.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Btntidak();
            }
        });
    }

    private void Btntidak() {

        if(a1=="1"){
            p.setText("HP tidak penuh walaupun sudah diisi berjam jam");
            a1="2";
            p1="";
        }else if(a1=="2"){
            p.setText("Penggunaan baterai boros");
            a1="3";
            p2=p1;
        }else if (a1=="3"){
            p.setText("Tidak bisa dicarger");
            a1="4";
            p3=p2;
        }else if (a1=="4"){
            p.setText(" Data tiba tiba hilang");
            a1="5";
            p4=p3;
        }else if(a1=="5"){
            p.setText("Tidak bisa diakses pada komputer atau laptop");
            a1="6";
            p5=p4;
        }else if(a1=="6"){
            p.setText("Tidak dapat membuka gallery pada HP");
            a1="7";
            p6=p5;
        }else if(a1=="7"){
            p.setText("HP bisa mengirim file tertentu saja");
            a1="8";
            p7=p6;
        }else if(a1=="8"){
            p.setText("HP hanya bisa menerima file tertentu saja");
            a1="9";
            p8=p7;
        }else if(a1=="9"){
            p.setText("Penekanan pada huruf menjadi acak");
            a1="10";
            p9=p8;
        }else if(a1=="10"){
            p.setText("Tulisan bergaris atau berantakan");
            a1="11";
            p10=p9;
        }else if(a1=="11"){
            p.setText("Sebagain tombol tidak berfungsi ");
            a1="12";
            p11=p10;
        }else if(a1=="12"){
            p.setText("Sebagian tombol sulit ditekan");
            a1="13";
            p12=p11;
        }else if(a1=="13"){
            p.setText("Tidak ada reaksi ketika ditekan");
            a1="14";
            p13=p12;
        }else if(a1=="14"){
            p14=p13;
            ok =new StringBuffer(p14);
            ok.deleteCharAt(ok.length()-1);
            p15= String.valueOf(ok);
            p.setText("Silahkan lihat hasil");
            sub.setVisibility(View.VISIBLE);
            btnya.setVisibility(View.GONE);
            btnno.setVisibility(View.GONE);
        }
    }

    private void Btnya() {

        if(a1=="1"){
            p.setText("HP tidak penuh walaupun sudah diisi berjam jam");
            a1="2";
            p1="G01,";
        }else if(a1=="2"){
            p.setText("Penggunaan baterai boros");
            a1="3";
            p2=p1+"G02,";
        }else if (a1=="3"){
            p.setText("Tidak bisa dicarger");
            a1="4";
            p3=p2+"G03,";
        }else if (a1=="4"){
            p.setText(" Data tiba tiba hilang");
            a1="5";
            p4=p3+"G04,";
        }else if(a1=="5"){
            p.setText("Tidak bisa diakses pada komputer atau laptop");
            a1="6";
            p5=p4+"G05,";
        }else if(a1=="6"){
            p.setText("Tidak dapat membuka gallery pada HP");
            a1="7";
            p6=p5+"G06,";
        }else if(a1=="7"){
            p.setText("HP bisa mengirim file tertentu saja");
            a1="8";
            p7=p6+"G07,";
        }else if(a1=="8"){
            p.setText("HP hanya bisa menerima file tertentu saja");
            a1="9";
            p8=p7+"G08,";
        }else if(a1=="9"){
            p.setText("Penekanan pada huruf menjadi acak");
            a1="10";
            p9=p8+"G09,";
        }else if(a1=="10"){
            p.setText("Tulisan bergaris atau berantakan");
            a1="11";
            p10=p9+"G10,";
        }else if(a1=="11"){
            p.setText("Sebagain tombol tidak berfungsi ");
            a1="12";
            p11=p10+"G11,";
        }else if(a1=="12"){
            p.setText("Sebagian tombol sulit ditekan");
            a1="13";
            p12=p11+"G12,";
        }else if(a1=="13"){
            p.setText("Tidak ada reaksi ketika ditekan");
            a1="14";
            p13=p12+"G13,";
        }else if(a1=="14"){
            p14=p13+"G14,";
            ok =new StringBuffer(p14);
            ok.deleteCharAt(ok.length()-1);
            p15= String.valueOf(ok);
            p.setText("Silahkan lihat hasil");
            sub.setVisibility(View.VISIBLE);
            btnya.setVisibility(View.GONE);
            btnno.setVisibility(View.GONE);
        }
    }

    private void Regist(){
        StringRequest stringRequest = new StringRequest(Request.Method.POST, URL_REGIST,
                new Response.Listener<String>() {

                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject jsonObject = new JSONObject(response);
                            String hasil = jsonObject.getString("hasil");
                            String penyakit = jsonObject.getString("penyakit");
                            String penanganan = jsonObject.getString("penanganan");
                            Intent i = new Intent(diagnosa.this,hasil.class);
                            i.putExtra("hasil",hasil);
                            i.putExtra("penyakit",penyakit);
                            i.putExtra("penanganan",penanganan);
                            startActivity(i);
                            finish();

                        } catch (JSONException e) {

                            Toast.makeText(diagnosa.this, "Error Respons! ", Toast.LENGTH_SHORT).show();

                        }
                    }
                },
                error -> Toast.makeText(diagnosa.this, "Error Send ! " + error.toString(), Toast.LENGTH_SHORT).show())
        {
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                Map<String, String> params = new HashMap<>();
                if (p2 == String.valueOf(2)){} ;
                params.put("daftargejala[]", p15);

                return params;
            }
        };

        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);
    }
}