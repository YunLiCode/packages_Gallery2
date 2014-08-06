.class public Lcom/android/gallery3d/app/TrimVideo;
.super Landroid/app/Activity;
.source "TrimVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

.field private mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field public mProgress:Landroid/app/ProgressDialog;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSaveVideoTextView:Landroid/widget/TextView;

.field private mSrcVideoPath:Ljava/lang/String;

.field private mTrimEndTime:I

.field private mTrimStartTime:I

.field private mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    .line 58
    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 59
    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 60
    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 64
    iput-boolean v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

    .line 149
    new-instance v0, Lcom/android/gallery3d/app/TrimVideo$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/TrimVideo$2;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/TrimVideo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/TrimVideo;)Lcom/android/gallery3d/util/SaveVideoFileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/TrimVideo;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private isModified()Z
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 216
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    sub-int v0, v1, v2

    .line 220
    .local v0, "delta":I
    if-lt v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 221
    :cond_0
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showPaused()V

    .line 212
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showPlaying()V

    .line 206
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    .line 207
    return-void
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 180
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    if-ge v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 182
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 186
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lez v1, :cond_2

    .line 187
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-le v1, v2, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 189
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showEnded()V

    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 196
    .local v0, "duration":I
    if-lez v0, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-nez v1, :cond_3

    .line 197
    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setTimes(IIII)V

    .line 200
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    return v1
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0239

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0b023b

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 283
    return-void
.end method

.method private trimVideo()V
    .locals 5

    .prologue
    .line 229
    const-string v1, "\'TRIM\'_yyyyMMdd_HHmmss"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    const v4, 0x7f0b022e

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/util/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/util/SaveVideoFileInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;

    .line 231
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "mSrcFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->showProgressDialog()V

    .line 235
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/gallery3d/app/TrimVideo$3;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/TrimVideo$3;-><init>(Lcom/android/gallery3d/app/TrimVideo;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showEnded()V

    .line 331
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/TrimVideo;->requestWindowFeature(I)Z

    .line 76
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/TrimVideo;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x2

    .line 80
    .local v1, "displayOptions":I
    invoke-virtual {v0, v6, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 81
    const/16 v1, 0x10

    .line 82
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 83
    const v4, 0x7f040088

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 85
    const v4, 0x7f0a0193

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/TrimVideo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    .line 86
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    new-instance v5, Lcom/android/gallery3d/app/TrimVideo$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/TrimVideo$1;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimVideo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 95
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    .line 96
    const-string v4, "media-item-path"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 97
    const v4, 0x7f040089

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/TrimVideo;->setContentView(I)V

    .line 98
    const v4, 0x7f0a0194

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/TrimVideo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "rootView":Landroid/view/View;
    const v4, 0x7f0a0131

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    .line 102
    new-instance v4, Lcom/android/gallery3d/app/TrimControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/app/TrimControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    .line 103
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "rootView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TrimControllerOverlay;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 105
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setCanReplay(Z)V

    .line 107
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 108
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 109
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 111
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 325
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    .line 326
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string v0, "trim_start"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 169
    const-string v0, "trim_end"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 170
    const-string v0, "video_pos"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const-string v0, "trim_start"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "trim_end"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v0, "video_pos"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 2
    .param p1, "time"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 307
    iput p2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 308
    iput p3, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 309
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->isModified()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 302
    return-void
.end method

.method public onSeekStart()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 297
    return-void
.end method

.method public onShown()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 140
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 141
    return-void
.end method
