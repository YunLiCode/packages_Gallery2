.class public Lcom/google/android/apps/lightcycle/panorama/StitchingService;
.super Landroid/app/Service;
.source "StitchingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

.field private final binder:Landroid/os/IBinder;

.field private currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

.field private inProgressNotification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private paused:Z

.field private final serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

.field private stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->binder:Landroid/os/IBinder;

    .line 88
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .line 297
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createImageURI(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchNextSession()V

    return-void
.end method

.method public static createImageContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 9
    .param p0, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v5, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "imageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "fileName":Ljava/lang/String;
    const-string v6, "title"

    const/4 v7, 0x0

    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v6, "_display_name"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v6, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v6, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v6, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 276
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "parentPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "parentName":Ljava/lang/String;
    const-string v6, "bucket_id"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v6, "bucket_display_name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-object v5
.end method

.method private createImageURI(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createImageContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 249
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->loadLocationFromExif(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 254
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 261
    :goto_0
    return-object p2

    .line 258
    :cond_0
    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createInProgressNotification()Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    const v2, 0x7f0b0038

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v2, 0x7f02014e

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 185
    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 187
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 189
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 190
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private static loadLocationFromExif(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 285
    const/4 v3, 0x2

    :try_start_0
    new-array v2, v3, [F

    .line 286
    .local v2, "location":[F
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    const-string v3, "latitude"

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 289
    const-string v3, "longitude"

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "location":[F
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->TAG:Ljava/lang/String;

    const-string v4, "Could not read EXIF"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stitchNextSession()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 195
    const-string v0, "Stitching next session."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->popNextSession()Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    move-result-object v2

    .line 198
    .local v2, "session":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
    if-nez v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stopSelf()V

    .line 220
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    .line 205
    .local v3, "sessionPath":Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 206
    .local v4, "outputFile":Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    .line 207
    .local v5, "thumbnailFile":Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    .line 209
    .local v6, "imageUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .line 211
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend()V

    .line 215
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 128
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    .line 130
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    .line 132
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 133
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.google.android.apps.lightcycle.panorama.PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "com.google.android.apps.lightcycle.panorama.RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingFinished()V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 147
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 225
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createInProgressNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->startForeground(ILandroid/app/Notification;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchNextSession()V

    .line 243
    return v2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend()V

    .line 164
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->resume()V

    .line 174
    :cond_0
    return-void
.end method
