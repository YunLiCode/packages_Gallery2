.class Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;
.super Ljava/lang/Object;
.source "PicasaContentProvider0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaContentProvider0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereEntry"
.end annotation


# static fields
.field private static final TYPE_WHERE_CLAUSE:Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public sortLimit:Ljava/lang/String;

.field public sortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id in (SELECT _id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaContentProvider0;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_type = \'Buzz\' AND user_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->WHERE_CLAUSE:Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->TYPE_WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "order"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 445
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "userId":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "contentType":Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->TYPE_WHERE_CLAUSE:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selection:Ljava/lang/String;

    .line 451
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v3, "image/%"

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selectionArgs:[Ljava/lang/String;

    .line 459
    :goto_0
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->sortLimit:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->sortOrder:Ljava/lang/String;

    .line 461
    return-void

    .line 452
    :cond_0
    const-string v2, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->TYPE_WHERE_CLAUSE:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selection:Ljava/lang/String;

    .line 454
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v3, "video/%"

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selectionArgs:[Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_1
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->WHERE_CLAUSE:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selection:Ljava/lang/String;

    .line 457
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selectionArgs:[Ljava/lang/String;

    goto :goto_0
.end method
