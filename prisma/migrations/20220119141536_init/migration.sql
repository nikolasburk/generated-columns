-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "firstName" TEXT,
    "lastName" TEXT,
    "fullName" TEXT GENERATED ALWAYS AS (
        CASE
            WHEN "firstName" IS NULL THEN "lastName"
            WHEN "lastName" IS NULL THEN "firstName"
            ELSE "firstName" || ' ' || "lastName"
        END
    ) STORED,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);
