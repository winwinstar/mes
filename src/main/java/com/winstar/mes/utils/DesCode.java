package com.winstar.mes.utils;

import org.springframework.stereotype.Component;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;

/**
 * Created by Administrator on 2017/3/31.
 */
public class DesCode {
    private static final byte[] DesKey = "HQDCKEY1".getBytes();
    private static final byte[] DesIv = "HQDCKEY2".getBytes();
    private static AlgorithmParameterSpec iv = null;
    private static Key key = null;

    public DesCode() throws Exception {
        DESKeySpec keySpec = new DESKeySpec(DesKey);
        iv = new IvParameterSpec(DesIv);
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance("DES");
        key = secretKeyFactory.generateSecret(keySpec);
    }

    public String encode(String data) throws Exception {
        Cipher enCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        enCipher.init(Cipher.ENCRYPT_MODE,key,iv);
        byte[] paseByte = enCipher.doFinal(data.getBytes("utf-8"));
        BASE64Encoder base64Encoder = new BASE64Encoder();
        return base64Encoder.encode(paseByte);
    }

    public String decode(String data) throws Exception {
        Cipher enCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        enCipher.init(Cipher.DECRYPT_MODE,key,iv);
        BASE64Decoder base64Encoder = new BASE64Decoder();
        byte[] paseByte = enCipher.doFinal(base64Encoder.decodeBuffer(data));
        return new String(paseByte,"utf-8");
    }

}
