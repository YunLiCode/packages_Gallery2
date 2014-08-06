.class public interface abstract Lcom/android/photos/data/PhotoProvider$Albums;
.super Ljava/lang/Object;
.source "PhotoProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/PhotoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Albums"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
