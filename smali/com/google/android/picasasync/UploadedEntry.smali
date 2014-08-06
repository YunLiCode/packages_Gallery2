.class public Lcom/google/android/picasasync/UploadedEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "UploadedEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "upload_records"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public final account:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "account"
    .end annotation
.end field

.field public final albumId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_id"
    .end annotation
.end field

.field public final albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_title"
    .end annotation
.end field

.field public final bytesTotal:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_total"
    .end annotation
.end field

.field public final caption:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "caption"
    .end annotation
.end field

.field public final contentUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_uri"
    .end annotation
.end field

.field public final displayName:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "display_name"
    .end annotation
.end field

.field public final error:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "error"
    .end annotation
.end field

.field public final fingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field

.field final fingerprintHash:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "fingerprint_hash"
    .end annotation
.end field

.field public final idFromServer:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "id_from_server"
    .end annotation
.end field

.field public final state:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "state"
    .end annotation
.end field

.field public final timestamp:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "timestamp"
    .end annotation
.end field

.field uid:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uid"
    .end annotation
.end field

.field public final uploadedTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uploaded_time"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasasync/UploadedEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 192
    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->error:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->albumId:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->contentUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->account:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    .line 194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->uploadedTime:J

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->state:I

    .line 196
    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->displayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->albumTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->caption:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 5
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->account:Ljava/lang/String;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/picasasync/UploadedEntry;->uploadedTime:J

    .line 153
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->contentUri:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->albumId:Ljava/lang/String;

    .line 155
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    .line 156
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    .line 157
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadedTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    .line 158
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    .line 160
    .local v0, "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    if-nez v0, :cond_1

    .line 161
    iput-object v2, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    .line 167
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/UploadedEntry;->state:I

    .line 168
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/UploadedEntry;->getFullErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->error:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUid()I

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/UploadedEntry;->uid:I

    .line 170
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getCaption()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->caption:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->albumTitle:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->displayName:Ljava/lang/String;

    .line 173
    return-void

    .line 158
    .end local v0    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    .restart local v0    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    .line 165
    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/picasasync/UploadTaskEntry;JJJLjava/lang/String;[B)V
    .locals 2
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "idFromServer"    # J
    .param p4, "size"    # J
    .param p6, "timestamp"    # J
    .param p8, "url"    # Ljava/lang/String;
    .param p9, "fingerprint"    # [B

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->account:Ljava/lang/String;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->uploadedTime:J

    .line 133
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->contentUri:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->albumId:Ljava/lang/String;

    .line 135
    iput-wide p2, p0, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    .line 136
    iput-wide p4, p0, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    .line 137
    iput-wide p6, p0, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    .line 138
    iput-object p8, p0, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    .line 139
    iput-object p9, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    .line 140
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v0, p9}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    .line 141
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->state:I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->error:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUid()I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->uid:I

    .line 144
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->caption:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->albumTitle:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->displayName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method private static getFullErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 187
    :goto_0
    return-object v6

    .line 177
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 179
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz p0, :cond_1

    .line 180
    move-object v1, p0

    .line 181
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 185
    .local v2, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 187
    .end local v2    # "e":Ljava/lang/StackTraceElement;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id_from_server"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "content_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bytes_total"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
