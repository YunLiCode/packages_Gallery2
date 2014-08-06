.class public Lcom/android/photos/canvas/GalleryCanvasUtils;
.super Ljava/lang/Object;
.source "GalleryCanvasUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;
    }
.end annotation


# static fields
.field public static final PROJECTION_ALBUM:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/android/photos/canvas/GalleryCanvasUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/GalleryCanvasUtils;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "etag"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_shown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visibility"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/canvas/GalleryCanvasUtils;->PROJECTION_ALBUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static addHash(JJ)J
    .locals 2
    .param p0, "hashToAddTo"    # J
    .param p2, "hashToAdd"    # J

    .prologue
    .line 144
    const-wide/16 v0, 0x1f

    mul-long/2addr v0, p0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public static createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V
    .locals 1
    .param p0, "actionFragment"    # Lcom/google/android/pano/dialog/ActionFragment;
    .param p1, "getter"    # Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;ZLcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V

    .line 80
    return-void
.end method

.method public static createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;ZLcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V
    .locals 3
    .param p0, "actionFragment"    # Lcom/google/android/pano/dialog/ActionFragment;
    .param p1, "setPosition"    # Z
    .param p2, "getter"    # Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/pano/dialog/ActionFragment;->getSelectedItemPosition()I

    move-result v0

    .line 85
    .local v0, "position":I
    :goto_0
    new-instance v2, Lcom/android/photos/canvas/GalleryCanvasUtils$1;

    invoke-direct {v2, p2, p0, p1, v0}, Lcom/android/photos/canvas/GalleryCanvasUtils$1;-><init>(Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;Lcom/google/android/pano/dialog/ActionFragment;ZI)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void

    .end local v0    # "position":I
    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public static getAccount(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Landroid/accounts/Account;
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "accountName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 59
    const-string v8, "account_name"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_0
    if-nez v2, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 63
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 64
    const-string v8, "account_name"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 68
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v8, "com.google"

    invoke-virtual {v1, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 70
    .local v3, "accounts":[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v4, v6

    .line 71
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 75
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_1
    return-object v0

    .line 70
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getEtag(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "albums"    # Landroid/database/Cursor;

    .prologue
    .line 148
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "etag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 150
    const-string v1, "0"

    .line 152
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static queryAllPhotos(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Lcom/android/photos/canvas/ImageBrowseRowCursor;->createQueryProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryVisibleAlbums(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "albums":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "album_id IN ("

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v7, "where":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 130
    .local v4, "whereArgs":[Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_1

    .line 137
    :cond_2
    const/16 v0, 0x29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date_taken DESC, date_modified DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryPhotos(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "albumId"    # J

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {p0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryAllPhotos(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string v3, "album_id = ?"

    .line 115
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 118
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/photos/canvas/ImageBrowseRowCursor;->createQueryProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date_taken DESC, date_modified DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryVisibleAlbums(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 103
    const-string v3, "((is_shown IS NULL AND visibility = 3) OR is_shown = 1) AND (album_type IS NULL OR album_type = \'InstantUpload\')"

    .line 107
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/GalleryCanvasUtils;->PROJECTION_ALBUM:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
