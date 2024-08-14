import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.enableCors({
    origin: 'https://x-mentor-fe.vercel.app',
    credentials: true, 
  });
  
  await app.listen(process.env.PORT);
}
bootstrap();
