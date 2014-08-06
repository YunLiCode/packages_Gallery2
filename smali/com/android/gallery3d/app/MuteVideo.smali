.class public Lcom/android/gallery3d/app/MuteVideo;
.super Ljava/lang/Object;
.source "MuteVideo.java"


# instance fields
.field final TIME_STAMP_NAME:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

.field private mFilePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mMuteProgress:Landroid/app/ProgressDialog;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mFilePath:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mUri:Landroid/net/Uri;

    .line 40
    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

    .line 41
    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mHandler:Landroid/os/Handler;

    .line 44
    const-string v0, "\'MUTE\'_yyyyMMdd_HHmmss"

    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->TIME_STAMP_NAME:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/gallery3d/app/MuteVideo;->mUri:Landroid/net/Uri;

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/app/MuteVideo;->mFilePath:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MuteVideo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MuteVideo;)Lcom/android/gallery3d/util/SaveVideoFileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MuteVideo;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/MuteVideo;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MuteVideo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MuteVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b023a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b023b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 103
    return-void
.end method


# virtual methods
.method public muteInBackground()V
    .locals 5

    .prologue
    .line 53
    const-string v0, "\'MUTE\'_yyyyMMdd_HHmmss"

    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MuteVideo;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0b022e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/util/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/MuteVideo;->showProgressDialog()V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/gallery3d/app/MuteVideo$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MuteVideo$1;-><init>(Lcom/android/gallery3d/app/MuteVideo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method
