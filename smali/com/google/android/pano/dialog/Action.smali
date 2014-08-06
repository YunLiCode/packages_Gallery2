.class public Lcom/google/android/pano/dialog/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/dialog/Action$Builder;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/google/android/pano/dialog/Action$1;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/Action$1;-><init>()V

    sput-object v0, Lcom/google/android/pano/dialog/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/dialog/Action$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/dialog/Action$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/pano/dialog/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 130
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "drawableResource"    # I
    .param p5, "checked"    # Z
    .param p6, "multilineDescription"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "resourcePackageName"    # Ljava/lang/String;
    .param p5, "drawableResource"    # I
    .param p6, "checked"    # Z
    .param p7, "multilineDescription"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLandroid/content/Intent;I)V

    .line 149
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLandroid/content/Intent;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "resourcePackageName"    # Ljava/lang/String;
    .param p5, "drawableResource"    # I
    .param p6, "checked"    # Z
    .param p7, "multilineDescription"    # Z
    .param p8, "hasNext"    # Z
    .param p9, "intent"    # Landroid/content/Intent;
    .param p10, "checkSetId"    # I

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    .line 158
    iput p5, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    .line 159
    iput-boolean p6, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    .line 160
    iput-boolean p7, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    .line 161
    iput-boolean p8, p0, Lcom/google/android/pano/dialog/Action;->mHasNext:Z

    .line 162
    iput-object p9, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    .line 163
    iput p10, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    .line 164
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/pano/dialog/Action;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/pano/dialog/Action;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/pano/dialog/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/pano/dialog/Action;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/pano/dialog/Action;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/Action;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mHasNext:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckSetId()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x5

    .line 242
    iget v3, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    if-nez v3, :cond_1

    .line 243
    const/4 v1, 0x0

    .line 262
    :cond_0
    :goto_0
    return-object v1

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v1, 0x0

    .line 251
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 252
    .local v2, "packageContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 253
    .end local v2    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Action"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "Action"

    const-string v4, "No icon for this action."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "Action"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const-string v3, "Action"

    const-string v4, "No icon for this action."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasMultilineDescription()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mHasNext:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    .line 307
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return-void

    :cond_0
    move v0, v2

    .line 300
    goto :goto_0

    :cond_1
    move v1, v2

    .line 301
    goto :goto_1
.end method
