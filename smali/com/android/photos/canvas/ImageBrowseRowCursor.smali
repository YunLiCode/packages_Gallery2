.class public Lcom/android/photos/canvas/ImageBrowseRowCursor;
.super Landroid/database/CursorWrapper;
.source "ImageBrowseRowCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mImageColumnIndex:I

.field private mIntentColumnIndex:I

.field mPicasaFacade:Lcom/google/android/picasasync/PicasaFacade;

.field private mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/photos/canvas/ImageBrowseRowCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 29
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 23
    iput v2, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mIntentColumnIndex:I

    .line 24
    iput v2, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mImageColumnIndex:I

    .line 30
    iput-object p3, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mPicasaFacade:Lcom/google/android/picasasync/PicasaFacade;

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 33
    sget-object v2, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 34
    .local v0, "column":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 32
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :pswitch_1
    iput v1, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mIntentColumnIndex:I

    goto :goto_1

    .line 40
    :pswitch_2
    iput v1, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mImageColumnIndex:I

    goto :goto_1

    .line 45
    .end local v0    # "column":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static createQueryProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 100
    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const-string v4, "_count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .line 103
    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 105
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 106
    sget-object v3, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 107
    .local v0, "column":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 108
    const-string v3, "null"

    aput-object v3, v1, v2

    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 133
    :pswitch_0
    const-string v3, "null"

    aput-object v3, v1, v2

    goto :goto_2

    .line 113
    :pswitch_1
    const-string v3, "original_url"

    aput-object v3, v1, v2

    goto :goto_2

    .line 116
    :pswitch_2
    const-string v3, "preview_url"

    aput-object v3, v1, v2

    goto :goto_2

    .line 119
    :pswitch_3
    const-string v3, "_id"

    aput-object v3, v1, v2

    goto :goto_2

    .line 122
    :pswitch_4
    const-string v3, "album_id"

    aput-object v3, v1, v2

    goto :goto_2

    .line 125
    :pswitch_5
    const-string v3, "width"

    aput-object v3, v1, v2

    goto :goto_2

    .line 128
    :pswitch_6
    const-string v3, "height"

    aput-object v3, v1, v2

    goto :goto_2

    .line 137
    .end local v0    # "column":Ljava/lang/Integer;
    :cond_2
    array-length v3, p0

    const-string v4, "mime_type"

    aput-object v4, v1, v3

    move-object p0, v1

    .line 138
    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 59
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/photos/canvas/ImageBrowseRowCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 73
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 6
    .param p1, "column"    # I

    .prologue
    .line 83
    const/4 v4, 0x0

    .line 84
    .local v4, "value":Ljava/lang/String;
    iget v5, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mIntentColumnIndex:I

    if-ne p1, v5, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 87
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mProjection:[Ljava/lang/String;

    array-length v5, v5

    invoke-super {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 90
    :cond_0
    iget v5, p0, Lcom/android/photos/canvas/ImageBrowseRowCursor;->mImageColumnIndex:I

    if-ne p1, v5, :cond_1

    .line 91
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/photos/canvas/CanvasProvider;->createThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, "photosUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    goto :goto_0

    .line 94
    .end local v2    # "photosUri":Landroid/net/Uri;
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
