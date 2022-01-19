import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

// A `main` function so that we can use async/await
async function main() {

  const newUser = await prisma.user.create({
    data: {
      firstName: "John",
      lastName: "Doe",
    }
  })
  console.log(newUser)

  // const users = await prisma.user.findMany()
  // console.log(users)
 
}

main()
  .catch((e) => {
    console.error(e)
    process.exit(1)
  })
  .finally(async () => {
    await prisma.$disconnect()
  })
