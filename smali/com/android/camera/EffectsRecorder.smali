.class public Lcom/android/camera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;,
        Lcom/android/camera/EffectsRecorder$EffectsListener;
    }
.end annotation


# static fields
.field private static sClassFilter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphEnvironment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphRunner:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsLearningDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRecordingDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRunnerDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsSurfaceTextureSourceListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtGraphEnvironment:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtPoint:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtQuad:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private static sEffectsRecorderIndex:I

.field private static sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

.field private static sFilterGraphGetFilter:Ljava/lang/reflect/Method;

.field private static sFilterGraphTearDown:Ljava/lang/reflect/Method;

.field private static sFilterIsAvailable:Ljava/lang/reflect/Method;

.field private static sFilterSetInputValue:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentActivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetError:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerRun:Ljava/lang/reflect/Method;

.field private static sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

.field private static sGraphRunnerStop:Ljava/lang/reflect/Method;

.field private static sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

.field private static sObjectEquals:Ljava/lang/reflect/Method;

.field private static sObjectToString:Ljava/lang/reflect/Method;

.field private static sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

.field private static sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

.field private static sReflectionInited:Z

.field private static sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

.field private static sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;


# instance fields
.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Ljava/lang/Object;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Ljava/lang/Object;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Ljava/lang/Object;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Ljava/lang/Object;

.field private mRunner:Ljava/lang/Object;

.field private mRunnerDoneCallback:Ljava/lang/Object;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mSourceReadyCallback:Ljava/lang/Object;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    .line 108
    :try_start_0
    const-string v0, "android.filterfw.core.Filter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    .line 109
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v1, "isAvailable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v0, "EffectsRecorder"

    const-string v1, "Can\'t find the class android.filterfw.core.Filter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    const-string v0, "EffectsRecorder"

    const-string v1, "Can\'t find the method Filter.isAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 151
    iput v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    .line 153
    iput v6, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    .line 154
    iput v6, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 157
    iput v6, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 158
    iput v6, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 165
    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 166
    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 176
    iput v6, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 178
    const-string v0, "EffectsRecorder"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    .line 205
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder created ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    sget-boolean v0, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    if-nez v0, :cond_1

    .line 209
    :try_start_0
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v1, "setInputValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    .line 212
    const-string v0, "android.filterfw.geometry.Point"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    .line 216
    const-string v1, "android.filterfw.geometry.Quad"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 217
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    .line 220
    const-string v0, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    const-string v1, "android.filterpacks.videoproc.BackDropperFilter$LearningDoneListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    .line 224
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    const-string v2, "onLearningDone"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    .line 227
    const-class v0, Ljava/lang/Object;

    const-string v1, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    .line 228
    const-class v0, Ljava/lang/Object;

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    .line 230
    const-string v0, "android.filterfw.core.GraphRunner$OnRunnerDoneListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    .line 232
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    const-string v1, "onRunnerDone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    .line 235
    const-string v0, "android.filterfw.core.GraphRunner"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    .line 236
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v1, "getGraph"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    .line 237
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v1, "setDoneCallback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    .line 239
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v1, "run"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    .line 240
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v1, "getError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    .line 241
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v1, "stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    .line 243
    const-string v0, "android.filterfw.core.FilterContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 244
    const-string v1, "getGLEnvironment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    .line 247
    const-string v1, "android.filterfw.core.FilterGraph"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 248
    const-string v2, "getFilter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    .line 250
    const-string v2, "tearDown"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    .line 253
    const-string v1, "android.filterfw.GraphEnvironment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    .line 254
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    .line 255
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v2, "createGLEnvironment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    .line 257
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v2, "getRunner"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    .line 259
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v2, "addReferences"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    .line 261
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v2, "loadGraph"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    .line 263
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v2, "getContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    .line 266
    const-string v1, "android.filterfw.core.GLEnvironment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 267
    const-string v2, "isActive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    .line 268
    const-string v2, "activate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    .line 269
    const-string v2, "deactivate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    .line 271
    const-string v1, "android.filterpacks.videosrc.SurfaceTextureTarget"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 273
    const-string v2, "disconnect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    .line 276
    const-string v0, "android.filterpacks.videosink.MediaEncoderFilter$OnRecordingDoneListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    .line 278
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    const-string v1, "onRecordingDone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    .line 281
    const-string v0, "android.filterpacks.videosrc.SurfaceTextureSource$SurfaceTextureSourceListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    .line 283
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    const-string v1, "onSurfaceTextureSourceReady"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/SurfaceTexture;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    sput-boolean v7, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    .line 294
    :cond_1
    sget v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    .line 295
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current effects recorder index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sput-object p0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 297
    new-instance v0, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;

    sget v1, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-direct {v0, v1}, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;-><init>(I)V

    .line 299
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    .line 305
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    .line 308
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    .line 312
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 314
    invoke-static {p1}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 315
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()Lcom/android/camera/EffectsRecorder;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeOnRecordingDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/EffectsRecorder;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/EffectsRecorder;->invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/EffectsRecorder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeObjectToString()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeOnLearningDone()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/EffectsRecorder;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->invokeOnRunnerDone([Ljava/lang/Object;)V

    return-void
.end method

.method private getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1235
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 1217
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1208
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "filterContext"    # Ljava/lang/Object;

    .prologue
    .line 1226
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    return-void

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .param p1, "forceReset"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 606
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v11, :cond_5

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurfaceTexture"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_1

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_2

    .line 619
    :cond_1
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 622
    :cond_2
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    packed-switch v3, :pswitch_data_0

    .line 635
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown effect ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 624
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f080011

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 637
    :goto_0
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 639
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 640
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v8, "MODE_ASYNCHRONOUS"

    invoke-direct {p0, v7, v8}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 643
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    .line 645
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Old runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_3
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_4

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_5

    .line 652
    :cond_4
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 653
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 654
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 658
    :cond_5
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    packed-switch v3, :pswitch_data_1

    .line 685
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 686
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 629
    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 630
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f080005

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 660
    :pswitch_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 661
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "goofyrenderer"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 662
    .local v1, "goofyFilter":Ljava/lang/Object;
    const-string v4, "currentEffect"

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v4, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 666
    .end local v1    # "goofyFilter":Ljava/lang/Object;
    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 667
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "background"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 668
    .local v0, "backgroundSrc":Ljava/lang/Object;
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    if-eqz v3, :cond_7

    .line 671
    const-string v3, "context"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    :cond_7
    const-string v3, "sourceUrl"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-ne v3, v10, :cond_6

    .line 677
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "replacer"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 678
    .local v2, "replacer":Ljava/lang/Object;
    const-string v3, "mirrorBg"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_6

    const-string v3, "EffectsRecorder"

    const-string v4, "Setting the background to be mirrored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 581
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v3}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    .line 582
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 584
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 585
    .local v2, "videoFrameWidth":I
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 586
    .local v1, "videoFrameHeight":I
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 587
    :cond_0
    move v0, v2

    .line 588
    .local v0, "tmp":I
    move v2, v1

    .line 589
    move v1, v0

    .line 592
    .end local v0    # "tmp":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "textureSourceCallback"

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "recordingWidth"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "recordingHeight"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "recordingProfile"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "learningDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "recordingDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    aput-object v6, v5, v9

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 601
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 602
    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 603
    return-void
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 1167
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1176
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 735
    aget-object v1, p2, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private invokeObjectToString()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeOnLearningDone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 743
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 747
    invoke-virtual {p0, v2}, Lcom/android/camera/EffectsRecorder;->enable3ALocks(Z)V

    .line 748
    return-void
.end method

.method private invokeOnRecordingDone()V
    .locals 2

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 885
    return-void
.end method

.method private invokeOnRunnerDone([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 751
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 752
    monitor-enter p0

    .line 753
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 754
    const-string v0, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Graph runner done ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRunner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOldRunner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v3, "RESULT_ERROR"

    invoke-direct {p0, v0, v3}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 762
    const-string v0, "EffectsRecorder"

    const-string v3, "Error running filter graph!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 765
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 769
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 773
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "EffectsRecorder"

    const-string v1, "Tearing down old graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 775
    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 776
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/camera/EffectsRecorder;->getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 780
    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 783
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 785
    :cond_5
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v0, v6, :cond_6

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v0, v5, :cond_b

    .line 788
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    .line 789
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous effect halted. Running graph again. state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 804
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v1, "RESULT_ERROR"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_8

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v0, v5, :cond_8

    .line 807
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 809
    :cond_8
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 818
    :cond_9
    :goto_1
    monitor-exit p0

    .line 819
    return-void

    .line 766
    :cond_a
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 767
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto/16 :goto_0

    .line 810
    :cond_b
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    .line 812
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "EffectsRecorder"

    const-string v1, "Runner halted, restoring direct preview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 814
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    goto :goto_1

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 822
    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 823
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    monitor-enter p0

    .line 825
    :try_start_0
    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    .line 827
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v1, :cond_2

    .line 831
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "EffectsRecorder"

    const-string v1, "Ready callback: Already stopped, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1
    monitor-exit p0

    .line 879
    :goto_0
    return-void

    .line 834
    :cond_2
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v1, v4, :cond_4

    .line 837
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_3

    const-string v0, "EffectsRecorder"

    const-string v1, "Ready callback: Already released, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 840
    :cond_4
    if-nez v0, :cond_9

    .line 841
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_5

    .line 842
    const-string v0, "EffectsRecorder"

    const-string v1, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_5
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 850
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    .line 851
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ready callback: State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopCameraPreview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 857
    :cond_8
    monitor-exit p0

    goto :goto_0

    .line 861
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 863
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 864
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_a

    const-string v0, "EffectsRecorder"

    const-string v1, "Runner active, connecting effects preview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_a
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 867
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 872
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 874
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "EffectsRecorder"

    const-string v1, "Start preview/effect switch complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_b
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 878
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p1, "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "initArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1192
    .local p1, "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectsRecorder$2;-><init>(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1162
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .param p1, "effect"    # I
    .param p2, "msg"    # I

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/EffectsRecorder$1;-><init>(Lcom/android/camera/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1147
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 486
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 487
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "rotate"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 488
    .local v2, "rotateFilter":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "metarotate"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 489
    .local v0, "metaRotateFilter":Ljava/lang/Object;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 491
    .local v1, "reverseDegrees":I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    .end local v0    # "metaRotateFilter":Ljava/lang/Object;
    .end local v1    # "reverseDegrees":I
    .end local v2    # "rotateFilter":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1184
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setRecordingOrientation()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 496
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v6, v12, :cond_0

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 497
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, "bl":Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 499
    .local v1, "br":Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 500
    .local v4, "tl":Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 502
    .local v5, "tr":Ljava/lang/Object;
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 504
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    aput-object v4, v7, v11

    aput-object v5, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 516
    .local v3, "recordingRegion":Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v7, "recorder"

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 517
    .local v2, "recorder":Ljava/lang/Object;
    const-string v6, "inputRegion"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    .end local v0    # "bl":Ljava/lang/Object;
    .end local v1    # "br":Ljava/lang/Object;
    .end local v2    # "recorder":Ljava/lang/Object;
    .end local v3    # "recordingRegion":Ljava/lang/Object;
    .end local v4    # "tl":Ljava/lang/Object;
    .end local v5    # "tr":Ljava/lang/Object;
    :cond_0
    return-void

    .line 508
    .restart local v0    # "bl":Ljava/lang/Object;
    .restart local v1    # "br":Ljava/lang/Object;
    .restart local v4    # "tl":Ljava/lang/Object;
    .restart local v5    # "tr":Ljava/lang/Object;
    :cond_1
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 510
    :cond_2
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    aput-object v5, v7, v11

    aput-object v4, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "recordingRegion":Ljava/lang/Object;
    goto :goto_0

    .line 513
    .end local v3    # "recordingRegion":Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v9

    aput-object v5, v7, v10

    aput-object v0, v7, v11

    aput-object v1, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "recordingRegion":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disconnectCamera()V
    .locals 2

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the effects from Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    monitor-exit p0

    return-void

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDisplay()V
    .locals 6

    .prologue
    .line 969
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the graph from the SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v1, "display"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 972
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit p0

    return-void

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enable3ALocks(Z)V
    .locals 2

    .prologue
    .line 1073
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Enable3ALocks"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_2

    .line 1075
    const-string v0, "EffectsRecorder"

    const-string v1, "Camera already null. Not enabling 3A locks."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    :cond_1
    monitor-exit p0

    return-void

    .line 1078
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 1079
    invoke-virtual {p0, p1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1080
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 1119
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1128
    :goto_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1132
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 1135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    monitor-exit p0

    return-void

    .line 1125
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 2
    .param p1, "cameraDevice"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 329
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 320
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 535
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    .line 540
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 2
    .param p1, "facing"    # I

    .prologue
    .line 543
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 550
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 551
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 552
    return-void

    .line 545
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureRate(D)V
    .locals 3
    .param p1, "fps"    # D

    .prologue
    .line 410
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 420
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time lapse capture rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 422
    return-void

    .line 412
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .param p1, "effect"    # I
    .param p2, "effectParameter"    # Ljava/lang/Object;

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect: effect ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 467
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 468
    iput-object p2, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 470
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 472
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 474
    :cond_2
    return-void

    .line 460
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/EffectsRecorder$EffectsListener;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    .line 483
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .param p1, "maxDurationMs"    # I

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 405
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 398
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 400
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .param p1, "maxFileSize"    # J

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 388
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 381
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 383
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .param p1, "errorListener"    # Landroid/media/MediaRecorder$OnErrorListener;

    .prologue
    .line 568
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 577
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 578
    return-void

    .line 570
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .param p1, "infoListener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .prologue
    .line 555
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 564
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 565
    return-void

    .line 557
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 521
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 528
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 530
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 531
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 532
    return-void

    .line 523
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOrientationHint called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 359
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 370
    return-void

    .line 361
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "outputFile"    # Ljava/lang/String;

    .prologue
    .line 345
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 354
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 356
    return-void

    .line 347
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "previewSurfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 439
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 440
    iput p2, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    .line 441
    iput p3, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    .line 443
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_1

    .line 452
    :goto_0
    return-void

    .line 430
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 449
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 443
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 333
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 341
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 342
    return-void

    .line 335
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 706
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_1

    .line 707
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 696
    :pswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    :goto_0
    monitor-exit p0

    return-void

    .line 699
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 710
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_3

    .line 713
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 716
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "EffectsRecorder"

    const-string v1, "Passed a null surface; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    goto :goto_0

    .line 720
    :cond_5
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_6

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "EffectsRecorder"

    const-string v1, "Initializing filter framework and running the graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->initializeFilterFramework()V

    .line 727
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 729
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 730
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 888
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 900
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 901
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No output file name or descriptor provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 892
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already recording, cannot begin anew!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startRecording called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_1
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v1, :cond_2

    .line 905
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    .line 908
    :cond_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "recorder"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 909
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_5

    .line 910
    const-string v2, "outputFileDescriptor"

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 916
    :goto_0
    const-string v2, "audioSource"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    const-string v2, "recordingProfile"

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    const-string v2, "orientationHint"

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    iget-wide v2, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    .line 924
    :goto_1
    if-eqz v0, :cond_7

    .line 925
    const-wide/high16 v2, 0x3ff0000000000000L

    iget-wide v4, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    div-double/2addr v2, v4

    .line 926
    const-string v0, "timelapseRecordingIntervalUs"

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    :goto_2
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v0, :cond_3

    .line 934
    const-string v0, "infoListener"

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v0, :cond_4

    .line 937
    const-string v0, "errorListener"

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 939
    :cond_4
    const-string v0, "maxFileSize"

    iget-wide v2, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 940
    const-string v0, "maxDurationMs"

    iget v2, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    const-string v0, "recording"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 943
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 944
    monitor-exit p0

    return-void

    .line 912
    :cond_5
    :try_start_2
    const-string v2, "outputFile"

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 923
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 930
    :cond_7
    const-string v0, "timelapseRecordingIntervalUs"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopCameraPreview()V
    .locals 2

    .prologue
    .line 992
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Stopping camera preview."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 994
    const-string v0, "EffectsRecorder"

    const-string v1, "Camera already null. Nothing to disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :goto_0
    monitor-exit p0

    return-void

    .line 997
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 998
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 1003
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1014
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V

    .line 1018
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 1021
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 1024
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 1025
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :goto_0
    monitor-exit p0

    return-void

    .line 1006
    :sswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopPreview called when preview not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1009
    :sswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 3

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop recording ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 960
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v1, "recorder"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 961
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 963
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :goto_0
    monitor-exit p0

    return-void

    .line 953
    :pswitch_1
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopRecording called when recording not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 956
    :pswitch_2
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized tryEnable3ALocks(Z)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1054
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "tryEnable3ALocks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_2

    .line 1056
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not tryenabling 3A locks."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 1059
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1060
    invoke-static {v1}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1063
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1064
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    const/4 v0, 0x1

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1033
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "tryEnableVideoStabilization."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_2

    .line 1035
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not enabling video stabilization."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_1
    :goto_0
    return v0

    .line 1038
    :cond_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1040
    const-string v2, "video-stabilization-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1042
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_3

    const-string v0, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting video stabilization to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_3
    const-string v2, "video-stabilization"

    if-eqz p1, :cond_4

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1045
    const/4 v0, 0x1

    goto :goto_0

    .line 1043
    :cond_4
    const-string v0, "false"

    goto :goto_1

    .line 1047
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "EffectsRecorder"

    const-string v2, "Video stabilization not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
