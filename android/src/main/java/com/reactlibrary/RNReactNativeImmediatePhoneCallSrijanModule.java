
package com.reactlibrary;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;

import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import java.util.List;

public class RNReactNativeImmediatePhoneCallSrijanModule extends ReactContextBaseJavaModule {


  private static RNReactNativeImmediatePhoneCallSrijanModule RNReactNativeImmediatePhoneCallSrijanModule;

  private static ReactApplicationContext reactContext;
  private static String number = "";
  private static final int PERMISSIONS_REQUEST_ACCESS_CALL = 101;

  public RNReactNativeImmediatePhoneCallSrijanModule(ReactApplicationContext reactContext) {
    super(reactContext);
    if (RNReactNativeImmediatePhoneCallSrijanModule == null) {
      RNReactNativeImmediatePhoneCallSrijanModule = this;
    }
    RNReactNativeImmediatePhoneCallSrijanModule.reactContext = reactContext;

  }

  @Override
  public String getName() {
    return "RNReactNativeImmediatePhoneCallSrijan";
  }



  @ReactMethod
  public void immediatePhoneCall(String number) {
    RNReactNativeImmediatePhoneCallSrijanModule.number = Uri.encode(number);

    if (ContextCompat.checkSelfPermission(getReactApplicationContext(),
            android.Manifest.permission.CALL_PHONE) == PackageManager.PERMISSION_GRANTED) {
      call();
    } else {
      ActivityCompat.requestPermissions(getCurrentActivity(),
              new String[]{android.Manifest.permission.CALL_PHONE},
              PERMISSIONS_REQUEST_ACCESS_CALL);
    }
  }

  @SuppressLint("MissingPermission")
  private static void call() {
    String url = "tel:" + RNReactNativeImmediatePhoneCallSrijanModule.number;

    Intent callIntent = new Intent(Intent.ACTION_CALL);
    callIntent.setData(Uri.parse(url));
    callIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);


    PackageManager packageManager = reactContext.getPackageManager();
    List activities = packageManager.queryIntentActivities(callIntent, PackageManager.MATCH_DEFAULT_ONLY);

    for(int j = 0 ; j < activities.size() ; j++)
    {

      if(activities.get(j).toString().toLowerCase().contains("com.android.phone"))
      {
        callIntent.setPackage("com.android.phone");
      }
      else if(activities.get(j).toString().toLowerCase().contains("call"))
      {
        String pack = (activities.get(j).toString().split("[ ]")[1].split("[/]")[0]);
        callIntent.setPackage(pack);
      }
    }
    reactContext.startActivity(callIntent);
  }

  public static void onRequestPermissionsResult(int requestCode, @NonNull String permissions[], @NonNull int[] grantResults) {
    switch (requestCode) {
      case PERMISSIONS_REQUEST_ACCESS_CALL: {

        // If request is cancelled, the result arrays are empty.
        if (grantResults.length > 0
                && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
          call();
        }
      }
    }
  }

}