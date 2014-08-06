.class public interface abstract Lcom/android/photos/MultiChoiceManager$Delegate;
.super Ljava/lang/Object;
.source "MultiChoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/MultiChoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract deleteItemWithPath(Ljava/lang/Object;)V
.end method

.method public abstract getItemAtPosition(I)Ljava/lang/Object;
.end method

.method public abstract getItemMediaType(Ljava/lang/Object;)I
.end method

.method public abstract getItemSupportedOperations(Ljava/lang/Object;)I
.end method

.method public abstract getItemUri(Ljava/lang/Object;)Landroid/net/Uri;
.end method

.method public abstract getPathForItemAtPosition(I)Ljava/lang/Object;
.end method

.method public abstract getSelectedItemCount()I
.end method

.method public abstract getSelectedItemPositions()Landroid/util/SparseBooleanArray;
.end method

.method public abstract getSubItemUrisForItem(Ljava/lang/Object;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method
