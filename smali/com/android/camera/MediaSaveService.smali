.class public Lcom/android/camera/MediaSaveService;
.super Landroid/app/Service;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MediaSaveService$VideoSaveTask;,
        Lcom/android/camera/MediaSaveService$ImageSaveTask;,
        Lcom/android/camera/MediaSaveService$LocalBinder;,
        Lcom/android/camera/MediaSaveService$OnMediaSavedListener;,
        Lcom/android/camera/MediaSaveService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mListener:Lcom/android/camera/MediaSaveService$Listener;

.field private mTaskNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/camera/MediaSaveService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/android/camera/MediaSaveService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/camera/MediaSaveService$LocalBinder;-><init>(Lcom/android/camera/MediaSaveService;)V

    iput-object v0, p0, Lcom/android/camera/MediaSaveService;->mBinder:Landroid/os/IBinder;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MediaSaveService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/camera/MediaSaveService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/MediaSaveService;->onQueueAvailable()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onQueueAvailable()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method private onQueueFull()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/gallery3d/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p11, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    sget-object v2, Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot add image when the queue is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Lcom/android/camera/MediaSaveService$ImageSaveTask;

    if-nez p5, :cond_2

    const/4 v7, 0x0

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/MediaSaveService$ImageSaveTask;-><init>(Lcom/android/camera/MediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/android/gallery3d/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V

    .line 96
    .local v1, "t":Lcom/android/camera/MediaSaveService$ImageSaveTask;
    iget v2, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/camera/MediaSaveService;->onQueueFull()V

    .line 100
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/camera/MediaSaveService$ImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 92
    .end local v1    # "t":Lcom/android/camera/MediaSaveService$ImageSaveTask;
    :cond_2
    new-instance v7, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p6, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 107
    new-instance v0, Lcom/android/camera/MediaSaveService$VideoSaveTask;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/MediaSaveService$VideoSaveTask;-><init>(Lcom/android/camera/MediaSaveService;Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaveService$VideoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method

.method public isQueueFull()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/MediaSaveService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MediaSaveService;->mTaskNumber:I

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flag"    # I
    .param p3, "startId"    # I

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/android/camera/MediaSaveService$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/camera/MediaSaveService$Listener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/MediaSaveService;->mListener:Lcom/android/camera/MediaSaveService$Listener;

    .line 112
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    goto :goto_0
.end method
