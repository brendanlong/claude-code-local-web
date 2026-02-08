-- CreateTable
CREATE TABLE "Skill" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "repoSettingsId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL DEFAULT '',
    "content" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    CONSTRAINT "Skill_repoSettingsId_fkey" FOREIGN KEY ("repoSettingsId") REFERENCES "RepoSettings" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE INDEX "Skill_repoSettingsId_idx" ON "Skill"("repoSettingsId");

-- CreateIndex
CREATE UNIQUE INDEX "Skill_repoSettingsId_name_key" ON "Skill"("repoSettingsId", "name");
