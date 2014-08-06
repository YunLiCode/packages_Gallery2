.class final enum Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;
.super Ljava/lang/Enum;
.source "ImageShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InteractionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

.field public static final enum MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

.field public static final enum NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

.field public static final enum SCALE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 90
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->SCALE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 91
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->SCALE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->$VALUES:[Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->$VALUES:[Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    return-object v0
.end method
