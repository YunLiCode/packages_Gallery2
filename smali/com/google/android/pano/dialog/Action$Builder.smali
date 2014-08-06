.class public Lcom/google/android/pano/dialog/Action$Builder;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCheckSetId:I

.field private mChecked:Z

.field private mDescription:Ljava/lang/String;

.field private mDrawableResource:I

.field private mHasNext:Z

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mMultilineDescription:Z

.field private mResourcePackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDrawableResource:I

    .line 57
    iput v0, p0, Lcom/google/android/pano/dialog/Action$Builder;->mCheckSetId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/pano/dialog/Action;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/pano/dialog/Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/pano/dialog/Action;-><init>(Lcom/google/android/pano/dialog/Action$1;)V

    .line 61
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mKey:Ljava/lang/String;

    # setter for: Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$102(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mTitle:Ljava/lang/String;

    # setter for: Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$202(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDescription:Ljava/lang/String;

    # setter for: Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$302(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mIntent:Landroid/content/Intent;

    # setter for: Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$402(Lcom/google/android/pano/dialog/Action;Landroid/content/Intent;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mResourcePackageName:Ljava/lang/String;

    # setter for: Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$502(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDrawableResource:I

    # setter for: Lcom/google/android/pano/dialog/Action;->mDrawableResource:I
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$602(Lcom/google/android/pano/dialog/Action;I)I

    .line 67
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mChecked:Z

    # setter for: Lcom/google/android/pano/dialog/Action;->mChecked:Z
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$702(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 68
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mMultilineDescription:Z

    # setter for: Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$802(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 69
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mHasNext:Z

    # setter for: Lcom/google/android/pano/dialog/Action;->mHasNext:Z
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$902(Lcom/google/android/pano/dialog/Action;Z)Z

    .line 70
    iget v1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mCheckSetId:I

    # setter for: Lcom/google/android/pano/dialog/Action;->mCheckSetId:I
    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/Action;->access$1002(Lcom/google/android/pano/dialog/Action;I)I

    .line 71
    return-object v0
.end method

.method public checkSetId(I)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "checkSetId"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mCheckSetId:I

    .line 121
    return-object p0
.end method

.method public checked(Z)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mChecked:Z

    .line 106
    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDescription:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public drawableResource(I)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "drawableResource"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mDrawableResource:I

    .line 101
    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mIntent:Landroid/content/Intent;

    .line 91
    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mKey:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public multilineDescription(Z)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "multilineDescription"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mMultilineDescription:Z

    .line 111
    return-object p0
.end method

.method public resourcePackageName(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mResourcePackageName:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action$Builder;->mTitle:Ljava/lang/String;

    .line 81
    return-object p0
.end method
