.class public Lcom/android/photos/canvas/DisplayedAlbumsActivity;
.super Lcom/google/android/pano/dialog/DialogActivity;
.source "DisplayedAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# static fields
.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

.field private mContentFragment:Lcom/google/android/pano/dialog/ContentFragment;

.field private mCurrentImageUri:Landroid/net/Uri;

.field private mEtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const-class v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->TAG:Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->PROJECTION_ID:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_count"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->PROJECTION_COUNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/photos/canvas/DisplayedAlbumsActivity;)Lcom/google/android/pano/dialog/ActionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/canvas/DisplayedAlbumsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->changeAllShown(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/pano/dialog/Action;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getAlbumId(Lcom/google/android/pano/dialog/Action;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/pano/dialog/Action;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->isShown(Lcom/google/android/pano/dialog/Action;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/photos/canvas/DisplayedAlbumsActivity;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/canvas/DisplayedAlbumsActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->changeAlbumVisibility(JZ)V

    return-void
.end method

.method static synthetic access$500(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createAction(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->allShown(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Z)Lcom/google/android/pano/dialog/Action;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/canvas/DisplayedAlbumsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createSelectAllAction(Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v0

    return-object v0
.end method

.method private static allShown(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 168
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    invoke-static {v0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->isShown(Lcom/google/android/pano/dialog/Action;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 172
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :goto_1
    return v2

    .line 166
    .restart local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private changeAlbumVisibility(JZ)V
    .locals 6
    .param p1, "albumId"    # J
    .param p3, "isShown"    # Z

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 241
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "is_shown"

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    sget-object v3, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void

    .line 242
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private changeAllShown(Ljava/util/ArrayList;Z)V
    .locals 13
    .param p2, "makeVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v11, 0x0

    .line 176
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v6, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, p2}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createSelectAllAction(Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v12

    invoke-virtual {p1, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v10, "values":Landroid/content/ContentValues;
    const-string v12, "is_shown"

    if-eqz p2, :cond_0

    const/4 v11, 0x1

    :cond_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 181
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 182
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    invoke-static {v0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->isShown(Lcom/google/android/pano/dialog/Action;)Z

    move-result v5

    .line 183
    .local v5, "isVisible":Z
    if-eq v5, p2, :cond_1

    .line 184
    invoke-static {v0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getAlbumId(Lcom/google/android/pano/dialog/Action;)J

    move-result-wide v3

    .line 185
    .local v3, "id":J
    sget-object v11, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 186
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 188
    .local v8, "update":Landroid/content/ContentProviderOperation;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v4, v11, p2}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createAction(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v11

    invoke-virtual {p1, v2, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v3    # "id":J
    .end local v8    # "update":Landroid/content/ContentProviderOperation;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    .end local v5    # "isVisible":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 194
    .local v7, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v11, "com.google.android.gallery3d.photoprovider"

    invoke-virtual {v7, v11, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    :goto_1
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v11, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->TAG:Ljava/lang/String;

    const-string v12, "Couldn\'t set all albums shown"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 197
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 198
    .local v1, "e":Landroid/content/OperationApplicationException;
    sget-object v11, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->TAG:Ljava/lang/String;

    const-string v12, "Couldn\'t set all albums shown"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static createAction(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;
    .locals 2
    .param p0, "albumId"    # J
    .param p2, "albumName"    # Ljava/lang/String;
    .param p3, "isShown"    # Z

    .prologue
    .line 220
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v1}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/pano/dialog/Action$Builder;->checked(Z)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v1

    return-object v1
.end method

.method private createSelectAllAction(Z)Lcom/google/android/pano/dialog/Action;
    .locals 5
    .param p1, "allVisible"    # Z

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 229
    const v3, 0x7f0b01c6

    .line 230
    .local v3, "titleResourceId":I
    const-string v1, "no albums"

    .line 235
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "allAlbumsTitle":Ljava/lang/String;
    new-instance v4, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v4}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v4

    return-object v4

    .line 232
    .end local v0    # "allAlbumsTitle":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "titleResourceId":I
    :cond_0
    const v3, 0x7f0b01c5

    .line 233
    .restart local v3    # "titleResourceId":I
    const-string v1, "all albums"

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private getAccountId()J
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "name = ?"

    .line 250
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v9

    .line 253
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->PROJECTION_ID:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, "account":Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 256
    .local v7, "id":J
    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 260
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_1
    return-wide v7
.end method

.method private static getAlbumId(Lcom/google/android/pano/dialog/Action;)J
    .locals 3
    .param p0, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getCountPhotosInAlbum(J)I
    .locals 9
    .param p1, "albumId"    # J

    .prologue
    const/4 v8, 0x0

    .line 203
    const-string v3, "album_id = ?"

    .line 204
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 207
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 210
    .local v6, "count":I
    if-eqz v7, :cond_1

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 214
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    return v6
.end method

.method private static isShown(Lcom/google/android/pano/dialog/Action;)Z
    .locals 1
    .param p0, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setContentFragmentImage()V
    .locals 18

    .prologue
    .line 266
    const/4 v14, 0x0

    .line 267
    .local v14, "quadImageUri":Landroid/net/Uri;
    const-wide/16 v5, 0x0

    .line 268
    .local v5, "albumId":J
    sget-object v7, Lcom/android/photos/canvas/CanvasProvider;->QUAD_IMAGE_URI:Landroid/net/Uri;

    .line 269
    .local v7, "baseUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/pano/dialog/ActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v4

    check-cast v4, Lcom/google/android/pano/dialog/ActionAdapter;

    .line 270
    .local v4, "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    invoke-virtual {v4}, Lcom/google/android/pano/dialog/ActionAdapter;->getActions()Ljava/util/ArrayList;

    move-result-object v3

    .line 271
    .local v3, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/pano/dialog/ActionFragment;->getSelectedItemPosition()I

    move-result v15

    .line 272
    .local v15, "selectedItem":I
    if-nez v15, :cond_3

    .line 273
    const-wide/16 v10, 0x0

    .line 274
    .local v10, "hash":J
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 275
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/pano/dialog/Action;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mEtags:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->hashCode()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->addHash(JJ)J

    move-result-wide v10

    .line 274
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 280
    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 286
    .end local v10    # "hash":J
    .end local v12    # "i":I
    :goto_1
    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mCurrentImageUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mContentFragment:Lcom/google/android/pano/dialog/ContentFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v13

    .line 291
    .local v13, "iconImageView":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v9

    .line 292
    .local v9, "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    new-instance v8, Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;-><init>(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Landroid/widget/ImageView;)V

    .line 300
    .local v8, "bitmapCallback":Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
    new-instance v16, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v16

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->width(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->build()Lcom/google/android/pano/widget/BitmapWorkerOptions;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v8}, Lcom/google/android/pano/widget/BitmapDownloader;->getBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V

    .line 302
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mCurrentImageUri:Landroid/net/Uri;

    .line 304
    .end local v8    # "bitmapCallback":Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
    .end local v9    # "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    .end local v13    # "iconImageView":Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 282
    :cond_3
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/dialog/Action;

    .line 283
    .local v2, "action":Lcom/google/android/pano/dialog/Action;
    invoke-static {v2}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getAlbumId(Lcom/google/android/pano/dialog/Action;)J

    move-result-wide v5

    .line 284
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mEtags:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    goto :goto_1
.end method


# virtual methods
.method public getActions()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mEtags:Ljava/util/ArrayList;

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v6, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mEtags:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v3, "account_id = ? AND (album_type IS NULL OR album_type = \'InstantUpload\')"

    .line 102
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getAccountId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 105
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/GalleryCanvasUtils;->PROJECTION_ALBUM:[Ljava/lang/String;

    const-string v5, "date_published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 107
    .local v9, "albums":Landroid/database/Cursor;
    const/4 v10, 0x1

    .line 108
    .local v10, "allShown":Z
    if-eqz v9, :cond_6

    .line 109
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 111
    .local v7, "albumId":J
    invoke-direct {p0, v7, v8}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getCountPhotosInAlbum(J)I

    move-result v11

    .line 112
    .local v11, "countPhotosInAlbum":I
    if-eqz v11, :cond_0

    .line 116
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    .line 121
    .local v12, "isShown":Z
    :goto_1
    if-eqz v10, :cond_4

    if-eqz v12, :cond_4

    const/4 v10, 0x1

    .line 122
    :goto_2
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0, v12}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createAction(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mEtags:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/photos/canvas/GalleryCanvasUtils;->getEtag(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v12    # "isShown":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 119
    :cond_2
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v12, 0x1

    .restart local v12    # "isShown":Z
    :goto_3
    goto :goto_1

    .end local v12    # "isShown":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 121
    .restart local v12    # "isShown":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 126
    .end local v7    # "albumId":J
    .end local v11    # "countPhotosInAlbum":I
    .end local v12    # "isShown":Z
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v10}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createSelectAllAction(Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v6
.end method

.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionFragment;->getSelectedItemPosition()I

    move-result v0

    .line 135
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;-><init>(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Lcom/google/android/pano/dialog/Action;I)V

    invoke-static {v1, v2, v3}, Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;ZLcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, p0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->getAccount(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mAccount:Landroid/accounts/Account;

    .line 72
    iget-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mAccount:Landroid/accounts/Account;

    if-nez v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 77
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0b014d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 79
    .local v0, "breadcrumb":Ljava/lang/String;
    const v4, 0x7f0b014e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "description":Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mContentFragment:Lcom/google/android/pano/dialog/ContentFragment;

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    .line 82
    iget-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mContentFragment:Lcom/google/android/pano/dialog/ContentFragment;

    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {p0, v4, v5}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    .line 83
    iget-object v4, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-static {v4, p0}, Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->setContentFragmentImage()V

    .line 309
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->setContentFragmentImage()V

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/pano/dialog/DialogActivity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 90
    return-void
.end method
