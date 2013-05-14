package util;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

/**
 *
 * @author Nguyen Nhat Linh
 */
public class EncryptionPassword {

    public EncryptionPassword() {

    }
        
    public String Encryption(String pass) {
         String ecryptPass = null;
        try 
        {
            PBEKeySpec keySpec = new PBEKeySpec("c1101g".toCharArray());
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");
            SecretKey sKey = keyFactory.generateSecret(keySpec);
            Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
            byte[] salt = {1, 2, 4, 7, 2, 3, 4, 5};
            PBEParameterSpec paramSpec = new PBEParameterSpec(salt, 20);
            cipher.init(Cipher.ENCRYPT_MODE, sKey, paramSpec);
            byte[] encrypt = cipher.doFinal(pass.getBytes("UTF8"));
            ecryptPass = new sun.misc.BASE64Encoder().encode(encrypt);
            return ecryptPass;
        }
        catch(Exception e) 
        {
            e.printStackTrace();
        }
        return null;
    }
    
     public String Decryption(String pass) {
         String decryptPass = null;
        try 
        {
            String resS=pass;
            PBEKeySpec keySpec = new PBEKeySpec("c1101g".toCharArray());
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");
            SecretKey sKey = keyFactory.generateSecret(keySpec);
            Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
            byte[] salt = {1, 2, 4, 7, 2, 3, 4, 5};
            PBEParameterSpec paramSpec = new PBEParameterSpec(salt, 20);
            cipher.init(Cipher.DECRYPT_MODE, sKey, paramSpec);
            byte[] dec = new sun.misc.BASE64Decoder().decodeBuffer(resS);
            byte[] decrypt = cipher.doFinal(dec);
            decryptPass = new String(decrypt, "UTF8");
            return decryptPass;
        }
        catch(Exception e) 
        {
            e.printStackTrace();
        }
        return null;
    }

}
