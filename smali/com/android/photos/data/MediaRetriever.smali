.class public interface abstract Lcom/android/photos/data/MediaRetriever;
.super Ljava/lang/Object;
.source "MediaRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/data/MediaRetriever$MediaSize;
    }
.end annotation


# virtual methods
.method public abstract getFastImageSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
.end method

.method public abstract getLocalFile(Landroid/net/Uri;)Ljava/io/File;
.end method

.method public abstract getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z
.end method

.method public abstract getTemporaryImage(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)[B
.end method

.method public abstract normalizeMediaSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
.end method

.method public abstract normalizeUri(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Landroid/net/Uri;
.end method
