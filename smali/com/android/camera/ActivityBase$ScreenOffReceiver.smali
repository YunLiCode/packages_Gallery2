.class Lcom/android/camera/ActivityBase$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ActivityBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ActivityBase$1;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/ActivityBase$ScreenOffReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    const/4 v0, 0x1

    # setter for: Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z
    invoke-static {v0}, Lcom/android/camera/ActivityBase;->access$002(Z)Z

    .line 146
    return-void
.end method
