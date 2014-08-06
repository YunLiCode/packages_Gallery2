.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mLastSystemUiVis:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private final mRootView:Landroid/view/View;

.field private mShowing:Z

.field private final mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;

.field private mVirtualizer:Landroid/media/audiofx/Virtualizer;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 13
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "movieActivity"    # Lcom/android/gallery3d/app/MovieActivity;
    .param p3, "videoUri"    # Landroid/net/Uri;
    .param p4, "savedInstance"    # Landroid/os/Bundle;
    .param p5, "canReplay"    # Z

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 88
    const-wide v9, 0x7fffffffffffffffL

    iput-wide v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 89
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 90
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 91
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 101
    new-instance v9, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 112
    new-instance v9, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 122
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 123
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 124
    const v9, 0x7f0a0131

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/VideoView;

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 125
    new-instance v9, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v9, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 126
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 128
    new-instance v9, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    .line 129
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v9, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 131
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 133
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 134
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 135
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 136
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v9, :cond_0

    .line 137
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v9}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 138
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    .local v1, "ai":Landroid/content/Intent;
    const-string v9, "virtualize"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 143
    .local v8, "virtualize":Z
    if-eqz v8, :cond_2

    .line 144
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9}, Landroid/widget/VideoView;->getAudioSessionId()I

    move-result v5

    .line 145
    .local v5, "session":I
    if-eqz v5, :cond_4

    .line 146
    new-instance v7, Landroid/media/audiofx/Virtualizer;

    const/4 v9, 0x0

    invoke-direct {v7, v9, v5}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    .line 147
    .local v7, "virt":Landroid/media/audiofx/Virtualizer;
    invoke-virtual {v7}, Landroid/media/audiofx/Virtualizer;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    .line 148
    .local v3, "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v9, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "uuid":Ljava/lang/String;
    const-string v9, "36103c52-8514-11e2-9e96-0800200c9a66"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "36103c50-8514-11e2-9e96-0800200c9a66"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 151
    :cond_1
    iput-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 152
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 161
    .end local v3    # "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v5    # "session":I
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v7    # "virt":Landroid/media/audiofx/Virtualizer;
    :cond_2
    :goto_0
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v10, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v10, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v9, v10}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v10, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v10, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V

    .line 183
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 185
    new-instance v9, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 186
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 188
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.android.music.musicservicecommand"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "i":Landroid/content/Intent;
    const-string v9, "command"

    const-string v10, "pause"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p2, v4}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    if-eqz p4, :cond_5

    .line 193
    const-string v9, "video-position"

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 194
    const-string v9, "resumeable-timeout"

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 195
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9}, Landroid/widget/VideoView;->start()V

    .line 196
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9}, Landroid/widget/VideoView;->suspend()V

    .line 197
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 206
    :goto_1
    return-void

    .line 155
    .end local v4    # "i":Landroid/content/Intent;
    .restart local v3    # "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    .restart local v5    # "session":I
    .restart local v6    # "uuid":Ljava/lang/String;
    .restart local v7    # "virt":Landroid/media/audiofx/Virtualizer;
    :cond_3
    invoke-virtual {v7}, Landroid/media/audiofx/Virtualizer;->release()V

    goto :goto_0

    .line 158
    .end local v3    # "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v7    # "virt":Landroid/media/audiofx/Virtualizer;
    :cond_4
    const-string v9, "MoviePlayer"

    const-string v10, "no session"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v5    # "session":I
    .restart local v4    # "i":Landroid/content/Intent;
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v2

    .line 200
    .local v2, "bookmark":Ljava/lang/Integer;
    if-eqz v2, :cond_6

    .line 201
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, p2, v9}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_1

    .line 203
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/MoviePlayer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 457
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    .line 350
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 344
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 345
    return-void
.end method

.method private setOnSystemUiVisibilityChangeListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method private setProgress()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 321
    :goto_0
    return v1

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 319
    .local v1, "position":I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 320
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimes(IIII)V

    goto :goto_0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bookmark"    # I

    .prologue
    .line 251
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 253
    const v1, 0x7f0b01a6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 256
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    const v1, 0x7f0b01a7

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    const v1, 0x7f0b01ac

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 232
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 234
    :cond_0
    const/16 v0, 0x700

    .line 237
    .local v0, "flag":I
    if-nez p1, :cond_1

    .line 239
    or-int/lit8 v0, v0, 0x7

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showLoading()V

    .line 330
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 338
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 339
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 365
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 366
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 309
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 408
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 409
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 420
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 421
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 449
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 424
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 449
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 430
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 434
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 439
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 453
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 287
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 414
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 292
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 1
    .param p1, "time"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 395
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 396
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 389
    return-void
.end method

.method public onSeekStart()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 384
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 401
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 402
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 403
    return-void
.end method
