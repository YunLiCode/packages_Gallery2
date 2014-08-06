.class public interface abstract Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;
.super Ljava/lang/Object;
.source "BitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/tools/BitmapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onExecute(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
