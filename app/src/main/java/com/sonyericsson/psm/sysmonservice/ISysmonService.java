package com.sonyericsson.psm.sysmonservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISysmonService extends IInterface {
    public static final String DESCRIPTOR = "com.sonyericsson.psm.sysmonservice.ISysmonService";

    public static class Default implements ISysmonService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
        public int getThermalLevelForCamera() throws RemoteException {
            return 0;
        }
    }

    int getThermalLevelForCamera() throws RemoteException;

    public static abstract class Stub extends Binder implements ISysmonService {
        static final int TRANSACTION_getThermalLevelForCamera = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ISysmonService.DESCRIPTOR);
        }

        public static ISysmonService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ISysmonService.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ISysmonService)) {
                return (ISysmonService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ISysmonService.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(ISysmonService.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                int thermalLevelForCamera = getThermalLevelForCamera();
                parcel2.writeNoException();
                parcel2.writeInt(thermalLevelForCamera);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements ISysmonService {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISysmonService.DESCRIPTOR;
            }

            @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
            public int getThermalLevelForCamera() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISysmonService.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
