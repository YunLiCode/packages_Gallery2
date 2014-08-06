.class public interface abstract Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
.super Ljava/lang/Object;
.source "MtpDeviceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public abstract onIndexFinish()V
.end method

.method public abstract onObjectIndexed(Landroid/mtp/MtpObjectInfo;I)V
.end method

.method public abstract onSorting()V
.end method
