.class public Lcom/google/android/picasasync/UploadTaskEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "UploadTaskEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "upload_tasks"
.end annotation


# static fields
.field private static final REQUIRED_COLUMNS:[Ljava/lang/String;

.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field private mAccount:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "account"
    .end annotation
.end field

.field private mAlbumId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_id"
    .end annotation
.end field

.field private mAlbumTitle:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_title"
    .end annotation
.end field

.field private mAuthTokenType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "auth_token_type"
    .end annotation
.end field

.field private mBytesTotal:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_total"
    .end annotation
.end field

.field private mBytesUploaded:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_uploaded"
    .end annotation
.end field

.field private mCaption:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "caption"
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_uri"
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "display_name"
    .end annotation
.end field

.field private mError:Ljava/lang/Throwable;

.field private mFingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field

.field private mMimeType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "mime_type"
    .end annotation
.end field

.field private mPriority:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "priority"
    .end annotation
.end field

.field private mRawComponentName:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "component_name"
    .end annotation
.end field

.field private mRequestTemplate:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "request_template"
    .end annotation
.end field

.field private mState:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "state"
    .end annotation
.end field

.field private mUid:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uid"
    .end annotation
.end field

.field private mUploadUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "upload_url"
    .end annotation
.end field

.field private mUploadedTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uploaded_time"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->REQUIRED_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    .line 254
    return-void
.end method

.method private static checkRequest(Landroid/content/ContentValues;)V
    .locals 8
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v3, "missingColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->REQUIRED_COLUMNS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 163
    .local v4, "requiredColumn":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 164
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v4    # "requiredColumn":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing fields in upload request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_2
    return-void
.end method

.method static createNew(Landroid/content/ContentValues;)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->checkRequest(Landroid/content/ContentValues;)V

    .line 152
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/UploadTaskEntry;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->valuesToObject(Landroid/content/ContentValues;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UploadTaskEntry;

    return-object v0
.end method

.method static createNew(Landroid/content/ContentValues;I)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "uid"    # I

    .prologue
    .line 146
    const-string v0, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-static {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->createNew(Landroid/content/ContentValues;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 137
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/UploadTaskEntry;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UploadTaskEntry;

    return-object v0
.end method

.method public static fromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # J

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v0}, Lcom/google/android/picasasync/UploadTaskEntry;-><init>()V

    .line 142
    .local v0, "task":Lcom/google/android/picasasync/UploadTaskEntry;
    sget-object v1, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/gallery3d/common/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/common/Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :goto_0
    return-object v0

    .restart local v0    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method getAuthTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAuthTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesTotal()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    return-wide v0
.end method

.method public getBytesUploaded()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    return-wide v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRawComponentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRawComponentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFingerprint()Lcom/android/gallery3d/common/Fingerprint;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    goto :goto_0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageUploaded()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v1, 0x64

    .line 362
    iget-wide v2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 363
    :cond_0
    const/4 v0, 0x0

    .line 368
    :cond_1
    :goto_0
    return v0

    .line 366
    :cond_2
    iget-wide v2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 368
    .local v0, "percent":I
    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method getRequestTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRequestTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    return v0
.end method

.method getUid()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUid:I

    return v0
.end method

.method getUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadedTime()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadedTime:J

    return-wide v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public hasFingerprint()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriority()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 401
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mPriority:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mPriority:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancellable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 380
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyForUpload()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 372
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartedYet()Z
    .locals 4

    .prologue
    .line 393
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 389
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAlbumId:Ljava/lang/String;

    .line 287
    return-void
.end method

.method setAuthTokenType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAuthTokenType:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setBytesTotal(J)V
    .locals 0
    .param p1, "bytesTotal"    # J

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    .line 339
    return-void
.end method

.method public setBytesUploaded(J)V
    .locals 0
    .param p1, "bytes"    # J

    .prologue
    .line 358
    iput-wide p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    .line 359
    return-void
.end method

.method public setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V
    .locals 1
    .param p1, "fingerprint"    # Lcom/android/gallery3d/common/Fingerprint;

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    .line 355
    return-void
.end method

.method setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mMimeType:Ljava/lang/String;

    .line 279
    return-void
.end method

.method setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 417
    iput p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mPriority:I

    .line 418
    return-void
.end method

.method setRequestTemplate(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRequestTemplate:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    .line 258
    return-void
.end method

.method public setState(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 261
    iput p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    .line 262
    iput-object p2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mError:Ljava/lang/Throwable;

    .line 263
    return-void
.end method

.method setUploadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadUrl"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadUrl:Ljava/lang/String;

    .line 319
    return-void
.end method

.method setUploadedTime()V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadedTime:J

    .line 295
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUrl:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public shouldRetry()Z
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "content_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "bytes_total"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->getPercentageUploaded()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
