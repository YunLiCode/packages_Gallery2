.class public interface abstract Lcom/android/gallery3d/ingest/ImportTask$Listener;
.super Ljava/lang/Object;
.source "ImportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/ImportTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onImportFinish(Ljava/util/Collection;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onImportProgress(IILjava/lang/String;)V
.end method
