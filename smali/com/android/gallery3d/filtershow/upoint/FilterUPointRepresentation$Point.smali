.class Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
.super Ljava/lang/Object;
.source "FilterUPointRepresentation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Point"
.end annotation


# instance fields
.field private active:Z

.field private brightness:I

.field private contrast:I

.field private inking:Z

.field private mask:Z

.field private saturation:I

.field private size:I

.field private xPos:I

.field private yPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    .line 70
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    .line 71
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    .line 73
    iput v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    .line 70
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    .line 71
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    .line 73
    iput v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    .line 80
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    .line 81
    iput p2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)V
    .locals 2
    .param p1, "copy"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    .line 70
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    .line 71
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    .line 73
    iput v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    .line 85
    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    .line 86
    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    .line 87
    iget v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    .line 88
    iget v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    .line 89
    iget v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    .line 90
    iget v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    .line 91
    iget v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    .line 92
    iget v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    .line 93
    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    return p1
.end method

.method static synthetic access$218(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;D)I
    .locals 2
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # D

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    return p1
.end method

.method static synthetic access$318(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;D)I
    .locals 2
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # D

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "FilterUPointRepresentation"

    return-object v0
.end method
